#include<ESP8266WiFi.h>
#include<WiFiClient.h>
#include<ESP8266HTTPClient.h>
WiFiClient WFC;
HTTPClient http;
int httpcode;
String url;
String API="LUPI1V6DWSY9ZP85";
String Fieldno="1";
int stepvalue;

void ConnecttoWiFi(void);
void sendGetrequest(void);
//http://api.thingspeak.com/update?api_key=LUPI1V6DWSY9ZP85&field1=0
void setup()
{
  Serial.begin(9600);
  pinMode(A0,INPUT);
  ConnecttoWifi();
}
void loop()
{
  stepvalue=analogRead(A0);
  sendGetrequest(stepvalue);
}
void ConnecttoWifi()
{
WiFi.mode(WIFI_STA);
WiFi.begin("Witspire","534261111");
Serial.print("Connecting_to_wifi");
while(WiFi.status() !=WL_CONNECTED)
{
  Serial.print(".");
  delay(200);
}
Serial.print("IP_ADDRESS:");
Serial.println(WiFi.localIP());
Serial.print("MAC_address:");
Serial.println(WiFi.macAddress());
}
void sendGetrequest(int data)
{
url="http://api.thingspeak.com/update?api_key=";
url=url+API;
url=url+"&field";
url=url+Fieldno;
url=url+"=";
url=url+data;
http.begin(WFC,url);
Serial.println("waiting_for_response");
httpcode=http.GET();
if(httpcode>0)
{
  Serial.println("DATA_SENT_SUCCESSFULLY");
}
else
{
  Serial.println("ERROR_IN_SENDING");
}
http.end();
delay(16000);
}
