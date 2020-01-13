#include "MSGEQ7.h"
#include <SPI.h>
#include <NRFLite.h>

#define pinAnalog A0
#define pinReset A2
#define pinStrobe A3
#define MSGEQ7_INTERVAL ReadsPerSecond(400)
#define MSGEQ7_SMOOTH 64 // Range: 0-255

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

uint8_t bassVal = 0;
uint8_t midVal = 0;
uint8_t trebVal = 0;
uint8_t bassScaled = 0;
uint8_t midScaled = 0;
uint8_t trebScaled = 0;

float bassColors[3] = {0, 1, 0.5};
float midColors[3] = {1, 0.05, 0};
float trebColors[3] = {1, 0, 0.5};

uint16_t maxLevels[3] = {0, 0, 0};
float levelMultipliers[3] = {1.0, 1.0, 1.0};
uint32_t lastMultiplierTime = 0;

uint16_t lastMillis = 0;


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

void calculateMultipliers() {
  Serial.println(maxLevels[0]);
  Serial.println(maxLevels[1]);
  Serial.println(maxLevels[2]);
  levelMultipliers[0] = (255.0 / maxLevels[0]) * 1;
  levelMultipliers[1] = (255.0 / maxLevels[1]) * 1.5;
  levelMultipliers[2] = (255.0 / maxLevels[2]) * 3;
  Serial.println(levelMultipliers[0]);
  Serial.println(levelMultipliers[1]);
  Serial.println(levelMultipliers[2]);
  maxLevels[0] = 0;
  maxLevels[1] = 0;
  maxLevels[2] = 0;
  lastMultiplierTime = millis();
}

void scaleValues() {

}


void setup() {
  Serial.begin(115200);

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

  lastMultiplierTime = millis();
}


void loop() {
  // Analyze without delay every interval
  bool newReading = MSGEQ7.read(MSGEQ7_INTERVAL);

  // Led output
  if (newReading) {

    // Read frequencies
    bassVal = max(MSGEQ7.get(MSGEQ7_0), MSGEQ7.get(MSGEQ7_1));
    midVal = max(MSGEQ7.get(MSGEQ7_3), MSGEQ7.get(MSGEQ7_4));
    trebVal = max(MSGEQ7.get(MSGEQ7_5), MSGEQ7.get(MSGEQ7_6));

    bassVal = remapNoise(bassVal);
    midVal = remapNoise(midVal);
    trebVal = remapNoise(trebVal);

    bassScaled = bassVal * levelMultipliers[0];
    midScaled = midVal * levelMultipliers[1];
    trebScaled = trebVal * levelMultipliers[2];

    // Output PWM signal via LED to the music beat
    analogWrite(pinLed, bassVal);

    _radioData.BassRed = remapColor(0, bassScaled, 0);
    _radioData.BassGreen = remapColor(0, bassScaled, 1);
    _radioData.BassBlue = remapColor(0, bassScaled, 2);

    _radioData.MidRed = remapColor(1, midScaled, 0);
    _radioData.MidGreen = remapColor(1, midScaled, 1);
    _radioData.MidBlue = remapColor(1, midScaled, 2);

    _radioData.TrebRed = remapColor(2, trebScaled, 0);
    _radioData.TrebGreen = remapColor(2, trebScaled, 1);
    _radioData.TrebBlue = remapColor(2, trebScaled, 2);

    _radio.send(DESTINATION_RADIO_ID, &_radioData, sizeof(_radioData), NRFLite::NO_ACK);

    maxLevels[0] = max(maxLevels[0], bassVal);
    maxLevels[1] = max(maxLevels[1], bassVal);
    maxLevels[2] = max(maxLevels[2], bassVal);

    if (millis() - lastMultiplierTime > 30000) {
      calculateMultipliers();
    }

//    Serial.println(millis() - lastMillis);
//    lastMillis = millis();
  }
}
