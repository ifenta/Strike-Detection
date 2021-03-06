#include <Arduino.h>

#include <ESP8266WiFi.h>
#include "ESPAsyncUDP.h"

const char * ssid = "Love Shack";
const char * password = "swagmuffin";

AsyncUDP udp;

IPAddress ip = IPAddress(192,168,0,109);
int portNum = 9999;

int count = 0;

void setup()
{
    Serial.begin(115200);
    WiFi.mode(WIFI_STA);
    WiFi.begin(ssid, password);
    if (WiFi.waitForConnectResult() != WL_CONNECTED) {
        Serial.println("WiFi Failed");
        while(1) {
            delay(1000);
        }
    }
    Serial.println("Wifi connected!");
    if(udp.connect(ip, portNum)) {
        Serial.println("UDP connected");
        udp.onPacket([](AsyncUDPPacket packet) {
            Serial.print("UDP Packet Type: ");
            Serial.print(packet.isBroadcast()?"Broadcast":packet.isMulticast()?"Multicast":"Unicast");
            Serial.print(", From: ");
            Serial.print(packet.remoteIP());
            Serial.print(":");
            Serial.print(packet.remotePort());
            Serial.print(", To: ");
            Serial.print(packet.localIP());
            Serial.print(":");
            Serial.print(packet.localPort());
            Serial.print(", Length: ");
            Serial.print(packet.length());
            Serial.print(", Data: ");
            Serial.write(packet.data(), packet.length());
            Serial.println();
            //reply to the client
            packet.printf("Got %u bytes of data", packet.length());
        });
    }
}

void loop()
{
    delay(1000);
    //Send broadcast on port 1234
    String message = "Hello! Count here is " + String(count) + "\n";
    udp.broadcastTo(message.c_str(), portNum);
    count++;
}
