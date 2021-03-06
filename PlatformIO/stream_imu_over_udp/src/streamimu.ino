#include <Arduino.h>

#include <WiFi.h>
#include "AsyncUDP.h"
#include "AsyncTCP.h"

#include <Wire.h>
#include <Adafruit_LSM9DS1.h>
#include <Adafruit_Sensor.h>  // not used in this demo but required!

#define LED_PIN 13

#define UDP
//#define TCP

// i2c
Adafruit_LSM9DS1 lsm = Adafruit_LSM9DS1();

AsyncClient *aClient = new AsyncClient();

uint32_t data_counter = 0;

unsigned long timer;
unsigned long udp_timer;

const char * ssid = "";
const char * password = "";

AsyncUDP udp;

// Check to make sure the IP address of the computer on the router is this
IPAddress ip = IPAddress(192,168,0,192);
int portNum = 9991;

bool connected = false;

void setupSensor(){
  // Set the accelerometer range
  lsm.setupAccel(lsm.LSM9DS1_ACCELRANGE_16G);
  
  // Set the magnetometer sensitivity
  lsm.setupMag(lsm.LSM9DS1_MAGGAIN_16GAUSS);

  // Setup the gyroscope
  lsm.setupGyro(lsm.LSM9DS1_GYROSCALE_2000DPS);
}

void setup(){
    Serial.begin(115200);

    pinMode(LED_PIN, OUTPUT);

    digitalWrite(LED_PIN, LOW);
    
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

#ifdef UDP
    if(udp.connect(ip, portNum)) {
        Serial.println("UDP connected");
        udp.onPacket([](AsyncUDPPacket packet) {
            Serial.println("Ack Message Recieved");
            connected = true;
            udp_timer = millis();
        });
    }

#else //TCP
    aClient->onError([](void * arg, AsyncClient * client, int error){
      Serial.print("Connect Error ");
      Serial.println(error);
      client = new AsyncClient();
      connected = false;
    }, NULL);

    aClient->onConnect([](void * arg, AsyncClient * client){
        Serial.println("Connected");
        aClient->onError(NULL, NULL);
        connected = true;

        client->onDisconnect([](void * arg, AsyncClient * c){
          Serial.println("Disconnected");
          c = new AsyncClient();
          connected = false;
        }, NULL);

        client->onData([](void * arg, AsyncClient * c, void * data, size_t len){
          Serial.print("\r\nData: ");
          Serial.println(len);
          uint8_t * d = (uint8_t*)data;
          for(size_t i=0; i<len;i++)
            Serial.write(d[i]);
        }, NULL);
    }, NULL);

#endif

}

void loop(){

    while(true){
#ifdef UDP
      // Send over UDP
      while(!connected){
        udp.broadcastTo("LH", portNum);
        Serial.println("Send message to server");
        digitalWrite(LED_PIN, LOW);
        delay(500);
        digitalWrite(LED_PIN, HIGH);
        delay(500);
      }
#else //TCP
      while(!connected){
        if(!aClient->connecting()) aClient->connect(ip, portNum);
        digitalWrite(LED_PIN, LOW);
        delay(500);
        digitalWrite(LED_PIN, HIGH);
        delay(500);
      }
#endif

      String message;

#ifdef TCP
      for(int i=0; i<100; i++){
#endif
          lsm.read();  /* ask it to read in the data */ 
        
          /* Get a new sensor event */ 
          sensors_event_t a, m, g, temp;
          lsm.getEvent(&a, &m, &g, &temp); 

          
          // Timestamp
          message += String(millis()-timer) + ";";
          //message += String(data_counter) + ";";

        
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
#ifdef TCP
      }
      aClient->write(message.c_str(), message.length());
      delay(1);
#else //UDP
      udp.broadcastTo(message.c_str(), portNum);
      data_counter++;
      if(millis() - udp_timer > 5000){
        //disconnected from server
        connected = false; 
        Serial.println("Disconnected from Server");
      }
#endif

  }  
}
