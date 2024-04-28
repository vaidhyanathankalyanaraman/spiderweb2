#include <DHT11.h>
DHT11 dht(2);
float temperature =0;
float humidity =0;
void setup()
{
  Serial.begin(9600);
  
}
void loop()
{  temperature = dht.readTemperature(); // Read temperature in °C
   humidity = dht.readHumidity();       // Read humidity in %

  Serial.print("Temperature: ");
  Serial.print(temperature);
  Serial.println(" °C");
  Serial.print("Humidity: ");
  Serial.print(humidity);
  Serial.println(" %");
}






