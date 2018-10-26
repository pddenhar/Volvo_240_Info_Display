#include <Wire.h>
#include "SSD1306Ascii.h"
#include "SSD1306AsciiWire.h"
#include <CircularBuffer.h>

CircularBuffer<int, 25> speedBuffer;
CircularBuffer<int, 25> tachBuffer;


#define I2C_ADDRESS 0x3C

int batteryPin = A1;
int brakePin = 2;
int speedometerPin = 3;
int tachPin = 10;
int servoPin = 7;

unsigned long previousDrawMillis = 0;
const long interval = 1000;

const double hzPerMPH = 2.71;
const double hzPerRPM = 1 / 60.0 * 2;
//correction factor for non-stock wheel size
const double correctionFactor = .94;
const int noPulseTimeout = 500; //ms

unsigned int maxSpeed = 160;
unsigned int maxRPM = 7500;

unsigned long lastSpeedoPulse;
unsigned long lastTachPulse;
unsigned long speedoCycleDuration;
unsigned long tachCycleDuration;
bool prevSpeedState = false;
bool prevTachState = false;
float tachState;
float speedState;

// keep track if the last loop cycle had in a draw in it
// (messes up timings, data needs to be tossed)
bool drewRecently = false;

SSD1306AsciiWire oled;
//------------------------------------------------------------------------------
void setup() {
  Wire.begin();
  Wire.setClock(400000L);
  oled.begin(&Adafruit128x64, I2C_ADDRESS);

  pinMode(brakePin, INPUT);
  pinMode(speedometerPin, INPUT);


  oled.setFont(ZevvPeep8x16);
}

double readVoltage() {
  int sensorValue = analogRead(batteryPin);
  double voltage = (sensorValue / 1023.0) * 5 /  (10.0 / (23.8 + 10.0)); //voltage divider constant
  return voltage;
}
//------------------------------------------------------------------------------
void loop() {
  unsigned long currentMillis = millis();
  unsigned long time_now = micros();

  // Use EWMA on signal as a simple low pass filter
  speedState = speedState * 0.9 + (float)digitalRead(speedometerPin) * .1;
  bool speedBool = speedState >= 0.5;
  if (speedBool != prevSpeedState && speedBool == HIGH) { //only trigger on rising
    speedoCycleDuration = time_now - lastSpeedoPulse;
    lastSpeedoPulse = time_now;
    int speed = (d2_frequency(speedoCycleDuration) / hzPerMPH * correctionFactor);
    if (!drewRecently && speed <= maxSpeed && speed > 0) {
      // Add to circular buffer
      speedBuffer.push(speed);
    }
    drewRecently = false;
  }
  prevSpeedState = speedBool;

  tachState = tachState * 0.8 + (float)digitalRead(tachPin) * .2;
  bool tachBool = tachState >= 0.5;
  if (tachBool != prevTachState && tachBool == HIGH) {
    tachCycleDuration = time_now - lastTachPulse;
    lastTachPulse = time_now;
    int rpm = (int)(d2_frequency(tachCycleDuration) / hzPerRPM);
    if (!drewRecently && rpm <= maxRPM && rpm >= 0) {
      // Add to circular buffer
      tachBuffer.push(rpm);
    }
    drewRecently = false;
  }
  prevTachState = tachBool;

  // if we have not seen a pulse inside the timeout period, reset circular buffer
  if ((time_now - lastTachPulse) / 1000 > noPulseTimeout) {
    tachBuffer.clear();
  }
  if ((time_now - lastSpeedoPulse) / 1000 > noPulseTimeout) {
    speedBuffer.clear();
  }

  // draw every interval ms
  if (currentMillis - previousDrawMillis >= interval) {
    int rpm = 0;
    int speed = 0;

    if (speedBuffer.size() > 0) {
      for (unsigned int i = 0; i < speedBuffer.size(); i++) {
        speed += ((float)speedBuffer[i]);
      }
      speed /= speedBuffer.size();
    }

    if (tachBuffer.size() > 0) {
      for (unsigned int i = 0; i < tachBuffer.size(); i++) {
        rpm += ((float)tachBuffer[i]);
      }
      rpm /= tachBuffer.size();
      //round to nearest 50
      rpm = (((rpm + 25) / 50) * 50);
    }

    oled.set1X();
    //oled.clear();

    oled.setCursor(0, 0);
    oled.print(readVoltage(), 1);
    oled.print("v");

    //    oled.setCursor(80, 0);
    //    oled.print(speedBuffer.size());
    //    oled.print(' ');
    //    oled.print(speedBuffer[0]);
    //    oled.print("  ");
    oled.setCursor(112, 0);
    bool brakeState = digitalRead(brakePin);
    if (brakeState) {
      oled.print("B");
    } else {
      oled.print(" ");
    }

    if (speedState) {
      oled.print("S");
    } else {
      oled.print(" ");
    }


    oled.setCursor(0, 2);
    oled.set2X();
    oled.print(speed);
    if (speed < 10) oled.print(' ');
    if (speed < 100) oled.print(' ');

    oled.setCursor(16 * 4, 2);
    oled.set2X();
    if (rpm < 1000) oled.print(' ');
    if (rpm < 100) oled.print(' ');
    if (rpm < 10) oled.print(' ');
    oled.print(rpm);

    oled.setCursor(0, 6);
    oled.set1X();
    oled.print("mph");
    oled.setCursor(8 * 13, 6);
    oled.print("RPM");

    previousDrawMillis = currentMillis;
  }
}



unsigned int d2_frequency(long duration) {
  // should be 1000000UL, working around bug, micros thinking
  // clock speed is 16.0mhz when it is 16.5mhz
  if (duration == 0) return 0;
  return 1000000UL / duration;
}


