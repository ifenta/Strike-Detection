#include <Arduino.h>

#include <Wire.h>
#include <SPI.h>
#include <Adafruit_LSM9DS1.h>
#include <Adafruit_Sensor.h>  // not used in this demo but required!

#define LED_PIN 0
#define IGNORE_TIME 30  //ms
#define READ_TIME 5000 //ms

// i2c
Adafruit_LSM9DS1 lsm = Adafruit_LSM9DS1();

unsigned long timer;

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
  pinMode(LED_PIN, OUTPUT);
  digitalWrite(LED_PIN, HIGH);
  Serial.begin(115200);

  while (!Serial) {
    delay(1000); // will pause Zero, Leonardo, etc until serial console opens
  }
  digitalWrite(LED_PIN, LOW);
  
  Serial.println("LSM9DS1 data read demo");
  
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

  // Initilize csv file
  Serial.println("Time(ms);AccX(m/s^2);AccY(m/s^2);AccZ(m/s^2);MagX(gauss);MagY(gauss);MagZ(gauss);GyroX(dps);GyroY(dps);GyroZ(dps)");
  
  // Start timer
  timer = millis();
}

void loop() 
{
  if((millis()-timer)<READ_TIME){
    lsm.read();  /* ask it to read in the data */ 
  
    /* Get a new sensor event */ 
    sensors_event_t a, m, g, temp;
    lsm.getEvent(&a, &m, &g, &temp); 

    // Wait 30 millis to read to get rid of initialization data
    if(millis()-timer>IGNORE_TIME){
      // Timestamp
      Serial.print(millis()-timer); Serial.print(";");
    
      // Acceleration Data
      Serial.print(a.acceleration.x); Serial.print(";");
      Serial.print(a.acceleration.y); Serial.print(";");
      Serial.print(a.acceleration.z); Serial.print(";");
    
      // Magnetometer Data
      Serial.print(m.magnetic.x); Serial.print(";");
      Serial.print(m.magnetic.y); Serial.print(";");
      Serial.print(m.magnetic.z); Serial.print(";");
    
      // Gyroscope Data
      Serial.print(g.gyro.x); Serial.print(";");
      Serial.print(g.gyro.y); Serial.print(";");
      Serial.println(g.gyro.z); 
    }
  }else{
    // Send complete to say we are done recording
    Serial.println("complete");
    // Turn off light and stop recording
    digitalWrite(LED_PIN, HIGH);
    while(1){
      delay(1000);
    }
  }
  
}
