// An audio signal is connected up to an MSGEQ7 spectrum analyser IC. This code
// reads intensity values, grouping them into three channels (Bass, Mid and
// Treb) and then calculates the Red, Green and Blue values for each at the
// current moment in time. All the RGB values for all the channels are then
// broadcasted out in a single packet using NRF24L01 tranciever. All receivers
// decide for themselves which RGB values to use based on what channel they
// have been configured to listen to. There are default RGB colours set in this
// code for each channel but it also listens for new RGB values that can be
// sent from a controller (also over the NRF24L01 radio).


#include "MSGEQ7.h"
#include <SPI.h>
#include <NRFLite.h>

#define pinAnalog A0
#define pinReset A1
#define pinStrobe A2
#define MSGEQ7_INTERVAL ReadsPerSecond(200)
#define MSGEQ7_SMOOTH 64 // Range: 0-255

CMSGEQ7<MSGEQ7_SMOOTH, pinReset, pinStrobe, pinAnalog> MSGEQ7;


const static uint8_t RADIO_ID = 1;             // Our radio's id.
const static uint8_t DESTINATION_RADIO_ID = 0; // Id of the radio we will transmit to.
const static uint8_t PIN_RADIO_CE = 9;
const static uint8_t PIN_RADIO_CSN = 10;

#define pinLedBass 3
#define pinLedMid 5
#define pinLedTreb 6

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

struct RadioPacketReceive // Any packet up to 32 bytes can be sent.
{
    uint8_t Red;
    uint8_t Green;
    uint8_t Blue;
    uint8_t Channel;
};

NRFLite _radio;
RadioPacket _radioData;
RadioPacketReceive _radioDataReceive;

uint8_t bassVal = 0;
uint8_t midVal = 0;
uint8_t trebVal = 0;
uint8_t bassScaled = 0;
uint8_t midScaled = 0;
uint8_t trebScaled = 0;

float bassColors[3] = {0, 1, 0.5};
float midColors[3] = {1, 0.2, 0};
float trebColors[3] = {1, 0, 0.7};

uint16_t maxLevels[3] = {0, 0, 0};
float levelMultipliers[3] = {1.0, 1.0, 1.0};
uint32_t lastMultiplierTime = 0;

uint16_t lastMillis = 0;


int remapNoise(int val) {
  // Adjusted for visual effect
  val = mapNoise(val);

  if (val < 30) {
    val = 0;
  }
  if (val < 100) {
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
  levelMultipliers[0] = min(((255.0 / maxLevels[0]) * 1), 100);
  levelMultipliers[1] = min(((255.0 / maxLevels[1]) * 0.5), 100);
  levelMultipliers[2] = min(((255.0 / maxLevels[2]) * 2), 100);
  Serial.println(levelMultipliers[0]);
  Serial.println(levelMultipliers[1]);
  Serial.println(levelMultipliers[2]);
  maxLevels[0] = 0;
  maxLevels[1] = 0;
  maxLevels[2] = 0;
  lastMultiplierTime = millis();
}

void setup() {
  Serial.begin(115200);

  // This will set the IC ready for reading
  MSGEQ7.begin();

  // led setup
  pinMode(pinLedBass, OUTPUT);
  pinMode(pinLedMid, OUTPUT);
  pinMode(pinLedTreb, OUTPUT);

  //                                                      Bitrate                  Channel (0-125)
  if (!_radio.init(RADIO_ID, PIN_RADIO_CE, PIN_RADIO_CSN, NRFLite::BITRATE250KBPS, 27)) {
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
    bassVal = MSGEQ7.get(MSGEQ7_0);
    midVal = max(MSGEQ7.get(MSGEQ7_2), MSGEQ7.get(MSGEQ7_3));
    trebVal = max(max(MSGEQ7.get(MSGEQ7_4), MSGEQ7.get(MSGEQ7_5)), MSGEQ7.get(MSGEQ7_6));

    bassVal = remapNoise(bassVal);
    midVal = remapNoise(midVal);
    trebVal = remapNoise(trebVal);

    bassScaled = bassVal * levelMultipliers[0];
    midScaled = midVal * levelMultipliers[1];
    trebScaled = trebVal * levelMultipliers[2];

    // Output PWM signal to LEDs
    analogWrite(pinLedBass, bassVal);
    analogWrite(pinLedMid, midVal);
    analogWrite(pinLedTreb, trebVal);

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

    while (_radio.hasData()) {
      Serial.println("Received colour control data");
      Serial.println(_radioDataReceive.Channel);
      _radio.readData(&_radioDataReceive); // Note how '&' must be placed in front of the variable name.

      if (_radioDataReceive.Channel == 0) {  // Bass
        bassColors[0] = float(_radioDataReceive.Red) / 255;
        bassColors[1] = float(_radioDataReceive.Green) / 255;
        bassColors[2] = float(_radioDataReceive.Blue) / 255;
      }
      if (_radioDataReceive.Channel == 1) {  // Bass
        midColors[0] = float(_radioDataReceive.Red) / 255;
        midColors[1] = float(_radioDataReceive.Green) / 255;
        midColors[2] = float(_radioDataReceive.Blue) / 255;
      }
      if (_radioDataReceive.Channel == 2) {  // Bass
        trebColors[0] = float(_radioDataReceive.Red) / 255;
        trebColors[1] = float(_radioDataReceive.Green) / 255;
        trebColors[2] = float(_radioDataReceive.Blue) / 255;
      }
    }

//    Serial.println(millis() - lastMillis);
//    lastMillis = millis();
  }
}
