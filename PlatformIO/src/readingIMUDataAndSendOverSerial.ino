#include <Arduino.h>

#include <Wire.h>
#include <SPI.h>
#include <Adafruit_LSM9DS1.h>
#include <Adafruit_Sensor.h>  // not used in this demo but required!

// i2c
Adafruit_LSM9DS1 lsm = Adafruit_LSM9DS1();

#define LSM9DS1_SCK A5
#define LSM9DS1_MISO 12
#define LSM9DS1_MOSI A4
#define LSM9DS1_XGCS 6
#define LSM9DS1_MCS 5
// You can also use software SPI
//Adafruit_LSM9DS1 lsm = Adafruit_LSM9DS1(LSM9DS1_SCK, LSM9DS1_MISO, LSM9DS1_MOSI, LSM9DS1_XGCS, LSM9DS1_MCS);
// Or hardware SPI! In this case, only CS pins are passed in
//Adafruit_LSM9DS1 lsm = Adafruit_LSM9DS1(LSM9DS1_XGCS, LSM9DS1_MCS);

int x = 0;

float data[3][3];

unsigned long timer;

void setupSensor()
{
  // 1.) Set the accelerometer range
  //lsm.setupAccel(lsm.LSM9DS1_ACCELRANGE_2G);
  //lsm.setupAccel(lsm.LSM9DS1_ACCELRANGE_4G);
  //lsm.setupAccel(lsm.LSM9DS1_ACCELRANGE_8G);
  lsm.setupAccel(lsm.LSM9DS1_ACCELRANGE_16G);
  
  // 2.) Set the magnetometer sensitivity
  //lsm.setupMag(lsm.LSM9DS1_MAGGAIN_4GAUSS);
  //lsm.setupMag(lsm.LSM9DS1_MAGGAIN_8GAUSS);
  //lsm.setupMag(lsm.LSM9DS1_MAGGAIN_12GAUSS);
  lsm.setupMag(lsm.LSM9DS1_MAGGAIN_16GAUSS);

  // 3.) Setup the gyroscope
  //lsm.setupGyro(lsm.LSM9DS1_GYROSCALE_245DPS);
  //lsm.setupGyro(lsm.LSM9DS1_GYROSCALE_500DPS);
  lsm.setupGyro(lsm.LSM9DS1_GYROSCALE_2000DPS);
}

void zeroArray(){
  for(int i=0; i<3; i++){
    for(int j=0; j<3; j++){
      data[i][j]=0;
    }
  }
}

void averageArray(){
  for(int i=0; i<3; i++){
    for(int j=0; j<3; j++){
      data[i][j]/=10;
    }
  }
}

void setup() 
{
  pinMode(13, OUTPUT);
  digitalWrite(13, LOW);
  Serial.begin(115200);

  while (!Serial) {
    delay(1); // will pause Zero, Leonardo, etc until serial console opens
  }
  digitalWrite(13, HIGH);
  
  //Serial.println("LSM9DS1 data read demo");
  
  // Try to initialise and warn if we couldn't detect the chip
  if (!lsm.begin())
  {
    Serial.println("Oops ... unable to initialize the LSM9DS1. Check your wiring!");
    while (1);
  }
  //Serial.println("Found LSM9DS1 9DOF");

  // helper to just set the default scaling we want, see above!
  setupSensor();

  zeroArray();
  Serial.println("Time(ms);AccX(m/s^2);AccY(m/s^2);AccZ(m/s^2);MagX(gauss);MagY(gauss);MagZ(gauss);GyroX(dps);GyroY(dps);GyroZ(dps)");
  timer = millis();
}

void loop() 
{
  if((millis()-timer)<15000){
    lsm.read();  /* ask it to read in the data */ 
  
    /* Get a new sensor event */ 
    sensors_event_t a, m, g, temp;
  
    lsm.getEvent(&a, &m, &g, &temp); 

    if(millis()-timer>30){
      Serial.print(millis()-timer); Serial.print(";");
    
      Serial.print(a.acceleration.x); Serial.print(";");
      Serial.print(a.acceleration.y); Serial.print(";");
      Serial.print(a.acceleration.z); Serial.print(";");
    
      Serial.print(m.magnetic.x); Serial.print(";");
      Serial.print(m.magnetic.y); Serial.print(";");
      Serial.print(m.magnetic.z); Serial.print(";");
    
      Serial.print(g.gyro.x); Serial.print(";");
      Serial.print(g.gyro.y); Serial.print(";");
      Serial.println(g.gyro.z); 
    }
  }else{
    Serial.println("complete");
    digitalWrite(13, LOW);
    while(1);
  }
  
}
