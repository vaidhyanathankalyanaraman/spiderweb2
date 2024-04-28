#include<ESP8266WiFi.h>
void connect_to_wifi();
void setup() 
{
  Serial.begin(115200);
  connect_to_wifi();
}
void loop() 
{
  Serial.print("HELLO_ARDUINO");
  if(Serial.available()>0)
  {
    
  }

}
void connect_to_wifi()
{
  WiFi.mode(WIFI_STA);
  WiFi.begin("ssid","password");
  Serial.print("CONNECTING_TO_WIFI");
  while(WiFi.status() !=WL_CONNECTED)
  {
    Serial.print(".");
    delay(200);
  }
  Serial.print("IP_ADDRESS");
  Serial.println(WiFi.localIP());
  Serial.print("MAC_ADDRESS");
  Serial.println(WiFi.macAddress());
}
