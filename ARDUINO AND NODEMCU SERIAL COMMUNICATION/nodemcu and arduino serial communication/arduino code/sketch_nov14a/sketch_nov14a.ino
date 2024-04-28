int data=0;
int data1=0;
void setup() 
{
  Serial.begin(115200);
  pinMode(A0,INPUT);
  pinMode(A1,INPUT);
}

void loop() 
{
  data=analogRead(A0);
  data1=analogRead(A1);
  if(Serial.available()>0)
  {
    String data=Serial.readString();
    Serial.print("SENDING_DATA:");
    Serial.print("analogchannel_1:  ");
    Serial.println(data);
    Serial.print("analogchannel_2:  ");
    Serial.println(data1);
  }

}
