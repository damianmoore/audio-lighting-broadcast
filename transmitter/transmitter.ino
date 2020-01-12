#include "MSGEQ7.h"
#include <SPI.h>
#include <NRFLite.h>

#define pinAnalog A0
#define pinReset A2
#define pinStrobe A3
#define MSGEQ7_INTERVAL ReadsPerSecond(50)
#define MSGEQ7_SMOOTH 20 // Range: 0-255

CMSGEQ7<MSGEQ7_SMOOTH, pinReset, pinStrobe, pinAnalog> MSGEQ7;


const static uint8_t RADIO_ID = 1;             // Our radio's id.
const static uint8_t DESTINATION_RADIO_ID = 0; // Id of the radio we will transmit to.
const static uint8_t PIN_RADIO_CE = 9;
const static uint8_t PIN_RADIO_CSN = 10;

#define pinLed 3

inline MSGEQ7_data_t mapNoise(MSGEQ7_data_t x,
                              MSGEQ7_data_t in_min = MSGEQ7_IN_MIN,
                              MSGEQ7_data_t in_max = MSGEQ7_IN_MAX,
                              MSGEQ7_data_t out_min = MSGEQ7_OUT_MIN,
                              MSGEQ7_data_t out_max = MSGEQ7_OUT_MAX);

struct RadioPacket // Any packet up to 32 bytes can be sent.
{
    uint8_t BassRed;
    uint8_t BassGreen;
    uint8_t BassBlue;
    uint8_t MidRed;
    uint8_t MidGreen;
    uint8_t MidBlue;
    uint8_t TrebRed;
    uint8_t TrebGreen;
    uint8_t TrebBlue;
};

NRFLite _radio;
RadioPacket _radioData;

//float colors[3] = {0.36, 0, 1};
float bassColors[3] = {0, 1, 1};
float midColors[3] = {1, 0.5, 0};
float trebColors[3] = {1, 0, 1};


int remapNoise(int val) {
  // Adjusted for visual effect
  val = mapNoise(val);

  if (val < 10) {
    val = 0;
  }
  if (val < 20) {
    val = val / 2;
  }

  return val;
}


int remapColor(int channel, int val, int color) {
  if (channel == 0) {
    return val * bassColors[color];
  }
  else if (channel == 1) {
    return val * midColors[color];
  }
  else if (channel == 2) {
    return val * trebColors[color];
  }
}


void setup() {
  // This will set the IC ready for reading
  MSGEQ7.begin();

  // led setup
  pinMode(pinLed, OUTPUT);

  //                                                      Bitrate                  Channel (0-125)
  if (!_radio.init(RADIO_ID, PIN_RADIO_CE, PIN_RADIO_CSN, NRFLite::BITRATE250KBPS, 27))
  {
      Serial.println("Cannot communicate with radio");
      while (1); // Wait here forever.
  }
}


void loop() {
  // Analyze without delay every interval
  bool newReading = MSGEQ7.read(MSGEQ7_INTERVAL);

  // Led output
  if (newReading) {

    // Read bass frequency
    uint8_t bassVal = MSGEQ7.get(MSGEQ7_0);
    uint8_t midVal = MSGEQ7.get(MSGEQ7_3);
    uint8_t trebVal = MSGEQ7.get(MSGEQ7_5);
    bassVal = remapNoise(bassVal);
    midVal = remapNoise(midVal);
    trebVal = remapNoise(trebVal);

    // Output PWM signal via LED to the music beat
    analogWrite(pinLed, bassVal);

    _radioData.BassRed = remapColor(0, bassVal, 0);
    _radioData.BassGreen = remapColor(0, bassVal, 1);
    _radioData.BassBlue = remapColor(0, bassVal, 2);

    _radioData.MidRed = remapColor(1, midVal, 0);
    _radioData.MidGreen = remapColor(1, midVal, 1);
    _radioData.MidBlue = remapColor(1, midVal, 2);

    _radioData.TrebRed = remapColor(2, trebVal, 0);
    _radioData.TrebGreen = remapColor(2, trebVal, 1);
    _radioData.TrebBlue = remapColor(2, trebVal, 2);

    _radio.send(DESTINATION_RADIO_ID, &_radioData, sizeof(_radioData), NRFLite::NO_ACK);
  }
}
