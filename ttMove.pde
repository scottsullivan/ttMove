import processing.serial.*; //imports the processing serial library

import cc.arduino.*; //imports the arduino library

Arduino arduino; //identifies Arduino

int pinTwoCount = 0; //establishes the integer for the count times the sensor has been activated
int pinTwoActive = 0; //shows if the sensor (plugged in to pin two) is active (1 if active, 0 if inactive)
int pinTwoLastState = 0; //establishes the last read state of pin two

void setup() {
  size(300, 300); //size of canvas
  arduino = new Arduino(this, Arduino.list()[4], 57600); //establishes the serial port (usb port) that the Arduino is plugged in to
  
  for (int i = 0; i <= 13; i++) //establishes the arduino pins that the sketch is looking at (all pins under 13)
    arduino.pinMode(i, Arduino.INPUT); //establishes that the sketch is using the pins as an input
    textSize(25); //size of the text
    smooth(); //makes the curves smoother
    fill(#FF8664); //the color of the circle
    noStroke(); //no stroke for the circle
    background(255, 255, 255); //background color
}

void draw() {
  int pinTwoActive = arduino.digitalRead(2); //establishes the name of pin two

  if (pinTwoActive != pinTwoLastState) { //if the pin number changes from the last time the pin was read
    if (pinTwoActive == 1) { //if the pin is active
      pinTwoCount = pinTwoCount + 5; //add 5 to the pin count
      background(255, 255, 255); //re-draw background
    }
  } 
  
  pinTwoLastState = pinTwoActive; //pin two last state is the current state (1 or 0)
  
  ellipse(150, 150, pinTwoCount, pinTwoCount); //draws a circle in the center of the canvas with the size of the count of activations (times 5)
  text(pinTwoCount / 5, 30, 270); //displays the number of times the sensor has been active

}
