#include <Arduino.h>

#include <WiFi.h>
#include "AsyncUDP.h"

#include <Wire.h>
#include <Adafruit_LSM9DS1.h>
#include <Adafruit_Sensor.h>  // not used in this demo but required!

#define LED_PIN 0
#define IGNORE_TIME 30  //ms
#define READ_TIME 15000 //ms

// i2c
Adafruit_LSM9DS1 lsm = Adafruit_LSM9DS1();

unsigned long timer;

const char * ssid = "********";
const char * password = "********";

AsyncUDP udp;

// Check to make sure the IP address of the computer on the router is this
IPAddress ip = IPAddress(192,168,0,108);
int portNum = 9999;

bool connected = false;

void setupSensor(){
  // Set the accelerometer range

  lsm.setupAccel(lsm.LSM9DS1_ACCELRANGE_16G);
  
  // Set the magnetometer sensitivity
  lsm.setupMag(lsm.LSM9DS1_MAGGAIN_16GAUSS);

  // Setup the gyroscope
  lsm.setupGyro(lsm.LSM9DS1_GYROSCALE_2000DPS);
}

void setup()
{
    Serial.begin(115200);

    pinMode(LED_PIN, OUTPUT);

    digitalWrite(LED_PIN, HIGH);
    
    // Try to initialise and warn if we couldn't detect the chip
    if (!lsm.begin())
    {
      Serial.println("Oops ... unable to initialize the LSM9DS1. Check your wiring!");
      while(1){
        delay(1000);
      }
    }
    Serial.println("Found LSM9DS1 9DOF");

    // helper to just set the default scaling we want, see above!
    setupSensor();

    WiFi.mode(WIFI_STA);
    WiFi.begin(ssid, password);
    if (WiFi.waitForConnectResult() != WL_CONNECTED) {
        Serial.println("WiFi Failed");
        while(1) {
            delay(1000);
        }
    }
    Serial.println("Wifi connected!");
    Serial.print("IP Address: ");
    Serial.println(WiFi.localIP());

    if(udp.connect(ip, portNum)) {
        Serial.println("UDP connected");
        udp.onPacket([](AsyncUDPPacket packet) {
            Serial.println("Message Recieved");
            connected = true;
        });
    }

    while(!connected){
      udp.broadcastTo("Hello\n", portNum);
      delay(2000);
    }
    Serial.println("UDP Ack Recieved");
    // Initilize csv file
    String message = "Time(ms);AccX(m/s^2);AccY(m/s^2);AccZ(m/s^2);MagX(gauss);MagY(gauss);MagZ(gauss);GyroX(dps);GyroY(dps);GyroZ(dps)\n";
    udp.broadcastTo(message.c_str(), portNum);
    Serial.println("Send Intial message");
    // Start timer
    timer = millis();

}

void loop()
{

    Serial.println("Loop Begin");

    digitalWrite(LED_PIN, LOW);
    while(1){
        if((millis()-timer)<READ_TIME){
          lsm.read();  /* ask it to read in the data */ 
        
          /* Get a new sensor event */ 
          sensors_event_t a, m, g, temp;
          lsm.getEvent(&a, &m, &g, &temp); 

          // Wait 30 millis to read to get rid of initialization data
          if(millis()-timer>IGNORE_TIME){
              String message;
              // Timestamp
              message += String(millis()-timer) + ";";
            
              // Acceleration Data
              message += String(a.acceleration.x) + ";";
              message += String(a.acceleration.y) + ";";
              message += String(a.acceleration.z) + ";";
            
              // Magnetometer Data
              message += String(m.magnetic.x) + ";";
              message += String(m.magnetic.y) + ";";
              message += String(m.magnetic.z) + ";";
            
              // Gyroscope Data
              message += String(g.gyro.x) + ";";
              message += String(g.gyro.y) + ";";
              message += String(g.gyro.x) + "\n";

              // Send over UDP
              udp.broadcastTo(message.c_str(), portNum);
        }
      }else{
        // Send complete to say we are done recording
        String message = "complete\n";
        udp.broadcastTo(message.c_str(), portNum);

        Serial.println("complete");
        // Turn off light and stop recording
        digitalWrite(LED_PIN, HIGH);
        while(1){
          delay(1000);
        }
      }  
      delay(1);
  }  
}
