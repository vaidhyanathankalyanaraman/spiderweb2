#include<ESP8266WiFi.h>
#include<WiFiClient.h>
#include<ESP8266HTTPClient.h>
WiFiClient WFC;
HTTPClient http;
String response,result,read;
int httpcode;
String url;
String API="LUPI1V6DWSY9ZP85";
String Fieldno="1";
int stepvalue;
void ConnecttoWifi();
void sendGetrequest();
String Read_command();
void setup() 
{
  Serial.begin(9600);
  ConnecttoWifi();
  pinMode(D2,OUTPUT);
  pinMode(A0,INPUT);
}
void loop() 
{
  stepvalue=analogRead(A0);
  sendGetrequest(stepvalue);
  read=Read_command();
  if((read=="L6")||(stepvalue>=300))
  {
    digitalWrite(D2,HIGH);
  }
  if((read=="L5")||(stepvalue<=299))
  {
    digitalWrite(D2,LOW);
  }
}
void ConnecttoWifi()
{
WiFi.mode(WIFI_STA);
WiFi.begin("Airtel_Witspire Solutions","witspire@2023");
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
String Read_command()
{
  http.begin(WFC,"http://api.thingspeak.com/talkbacks/50629/commands/37604390.json?api_key=5XX6E1G3A4KAB597");
  Serial.println("WAITING_FOR_RESPONSE");
  httpcode=http.GET();
  if(httpcode>0)
  {
    response=http.getString();
    int start_index=response.indexOf("command_string\":\"") + 17;
    result=response.substring(start_index,start_index+2);
    Serial.println(result);
  }
  else
  {
    Serial.println("HTTP_ERROR");
  }
  http.end();
  delay(10000);
  return result;
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
