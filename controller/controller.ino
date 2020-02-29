// Three potentiometers are used to set values for Red, Green and Blue.
// Three buttons are used to send the current RGB values to either the Bass,
// Mid, or Treble channels. The transmitter listens out for these contol
// packets and uses them to adjust the RGB colour values it transmits for
// each channel.


#include <SPI.h>
#include <NRFLite.h>

int redAnalogPin = A0;
int redVal = 0;

int greenAnalogPin = A1;
int greenVal = 0;

int blueAnalogPin = A2;
int blueVal = 0;

int bassButtonPin = 2;
int midButtonPin = 3;
int trebButtonPin = 4;


const static uint8_t RADIO_ID = 2;             // Our radio's id.
const static uint8_t DESTINATION_RADIO_ID = 1; // Id of the radio we will transmit to.
const static uint8_t PIN_RADIO_CE = 9;
const static uint8_t PIN_RADIO_CSN = 10;


struct RadioPacket // Any packet up to 32 bytes can be sent.
{
    uint8_t Red;
    uint8_t Green;
    uint8_t Blue;
    uint8_t Channel;
};

NRFLite _radio;
RadioPacket _radioData;


void setup() {
  pinMode(bassButtonPin, INPUT_PULLUP);
  Serial.begin(115200);

  if (!_radio.init(RADIO_ID, PIN_RADIO_CE, PIN_RADIO_CSN, NRFLite::BITRATE250KBPS, 27)) {
    Serial.println("Cannot communicate with radio");
    while (1); // Wait here forever.
  }
}

void loop() {
  redVal = analogRead(redAnalogPin) / 4;
  greenVal = analogRead(greenAnalogPin) / 4;
  blueVal = analogRead(blueAnalogPin) / 4;

  if (digitalRead(bassButtonPin) == 0) {
    Serial.println("SENDING bass");

    _radioData.Red = redVal;
    _radioData.Green = greenVal;
    _radioData.Blue = blueVal;
    _radioData.Channel = 0;
    
    _radio.send(DESTINATION_RADIO_ID, &_radioData, sizeof(_radioData), NRFLite::NO_ACK);
  }

  if (digitalRead(midButtonPin) == 0) {
    Serial.println("SENDING mid");

    _radioData.Red = redVal;
    _radioData.Green = greenVal;
    _radioData.Blue = blueVal;
    _radioData.Channel = 1;
    
    _radio.send(DESTINATION_RADIO_ID, &_radioData, sizeof(_radioData), NRFLite::NO_ACK);
  }

  if (digitalRead(trebButtonPin) == 0) {
    Serial.println("SENDING treb");

    _radioData.Red = redVal;
    _radioData.Green = greenVal;
    _radioData.Blue = blueVal;
    _radioData.Channel = 2;
    
    _radio.send(DESTINATION_RADIO_ID, &_radioData, sizeof(_radioData), NRFLite::NO_ACK);
  }
  
  delay(100);
}
