#include <SPI.h>
#include <NRFLite.h>

#define pinButton 2
#define pinLedRed 3
#define pinLedGreen 5
#define pinLedBlue 6


const static uint8_t RADIO_ID = 0;       // Our radio's id.  The transmitter will send to this id.
const static uint8_t PIN_RADIO_CE = 9;
const static uint8_t PIN_RADIO_CSN = 10;

uint8_t mode = -1;


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


void setup() {   
  //                                                      Bitrate                  Channel (0-125)
  if (!_radio.init(RADIO_ID, PIN_RADIO_CE, PIN_RADIO_CSN, NRFLite::BITRATE250KBPS, 27)) {
    while (1); // Wait here forever.
  }

  pinMode(pinButton, INPUT_PULLUP);
  pinMode(pinLedRed, OUTPUT);
  pinMode(pinLedGreen, OUTPUT);
  pinMode(pinLedBlue, OUTPUT);

// Experiments with Fast PWM frequencies
//  TCCR2B = TCCR2B & B11111000 | B00000010; // for PWM frequency of 3921.16 Hz
//  TCCR0B = TCCR0B & B11111000 | B00000010; // for PWM frequency of 7812.50 Hz
//  TCCR1B = TCCR1B & B11111000 | B00000010; // for PWM frequency of 3921.16 Hz

//  TCCR2B = TCCR2B & B11111000 | B00000001; // for PWM frequency of 31372.55 Hz
//  TCCR0B = TCCR0B & B11111000 | B00000001; // for PWM frequency of 62500.00 Hz
//  TCCR1B = TCCR1B & B11111000 | B00000001; // set timer 1 divisor to 1 for PWM frequency of 31372.55 Hz

  digitalWrite(pinLedRed, HIGH);
  delay(200);
  digitalWrite(pinLedRed, LOW);
  digitalWrite(pinLedGreen, HIGH);
  delay(200);
  digitalWrite(pinLedGreen, LOW);
  digitalWrite(pinLedBlue, HIGH);
  delay(200);
  digitalWrite(pinLedBlue, LOW);  
  delay(500);

  changeMode();
}


void changeMode() {
  mode += 1;
  if (mode > 2) {
    mode = 0;
  }

  for (int i = 0; i < mode + 1; i++) {
    digitalWrite(pinLedRed, LOW);
    digitalWrite(pinLedGreen, LOW);
    digitalWrite(pinLedBlue, LOW);
    delay(200);
    digitalWrite(pinLedRed, HIGH);
    digitalWrite(pinLedGreen, HIGH);
    digitalWrite(pinLedBlue, HIGH);
    delay(100);
  }

  digitalWrite(pinLedRed, LOW);
  digitalWrite(pinLedGreen, LOW);
  digitalWrite(pinLedBlue, LOW);
  delay(500);
}


void loop() {
  if (digitalRead(pinButton) == LOW) {
    changeMode();
  }
  while (_radio.hasData()) {
    _radio.readData(&_radioData); // Note how '&' must be placed in front of the variable name.

    if (mode == 0) {
      analogWrite(pinLedRed, _radioData.BassRed);
      analogWrite(pinLedGreen, _radioData.BassGreen);
      analogWrite(pinLedBlue, _radioData.BassBlue);
    }
    else if (mode == 1) {
      analogWrite(pinLedRed, _radioData.MidRed);
      analogWrite(pinLedGreen, _radioData.MidGreen);
      analogWrite(pinLedBlue, _radioData.MidBlue);
    }
    else if (mode == 2) {
      analogWrite(pinLedRed, _radioData.TrebRed);
      analogWrite(pinLedGreen, _radioData.TrebGreen);
      analogWrite(pinLedBlue, _radioData.TrebBlue);
    }
  }
}
