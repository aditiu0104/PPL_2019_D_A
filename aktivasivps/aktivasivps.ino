#include <ESP8266WiFi.h>
#include <dht.h>

//int sensorValue = 14;

const char* ssid= "Ruang 5"; //Ruang 5
const char* pass= "ciumdulu"; //ciumdulu
const char* host = "hautami.com";

#define sensor 14
dht DHT;
int sensorValue = 0;

int ledpin = 2;
int relaylamp = 0;
int relaypompa = 13;


void setup() {
  // Set Pin 
  pinMode(ledpin, OUTPUT);
  pinMode(relaylamp, OUTPUT);
  pinMode(relaypompa, OUTPUT);
  digitalWrite(ledpin, LOW);
  digitalWrite(relaylamp, LOW);
  digitalWrite(relaypompa, LOW);
  
  //Koneksi Wi-Fi
  Serial.begin(9600);
  delay(10000);

  Serial.print("Menghubungkan ke SSID: ");
  Serial.print(ssid);
  Serial.print("\n");

  WiFi.begin(ssid, pass);
  
  while (WiFi.status()!= WL_CONNECTED)
  {
    delay(500);
    Serial.print(".");
    
    }
    Serial.print("\n");
    Serial.print("Terhubung dengan ");
    Serial.print(ssid);
    Serial.print("\n");
    Serial.print("IP Address : ");
    Serial.print(WiFi.localIP());
    Serial.print("\n");
    Serial.print("MAC Address : ");
    Serial.print(WiFi.macAddress());
    Serial.print("\n");
}

void loop() {
      sensorValue = DHT.read11(sensor);
      float suhu = DHT.temperature;
  
        if (suhu > 24.00){ //matikan lampu
        digitalWrite(relaypompa, HIGH);
        delay(5000);
        digitalWrite(relaypompa, LOW);
        //digitalWrite(relaylamp, LOW);
        } if (suhu < 16.00){ //nyalakan lampu
          digitalWrite(relaylamp, HIGH);
          }
      
    WiFiClient client;
    const int httpPort = 80;
  
      if (!client.connect(host, httpPort)) {
      Serial.println("connection failed");
      return;
      }

      // We now create a URI for the request
      String url = "/add.php?";
      url +="suhu=";
      url +=suhu;
 
      Serial.print("Requesting URL: ");
      Serial.println(url);


      // This will send the request to the server
      client.print(String("GET ") + url + " HTTP/1.1\r\n" +
               "Host: " + host + "\r\n" +
               "Connection: close\r\n\r\n");
 
      unsigned long timeout = millis();
      while (client.available() == 0) {
        if (millis() - timeout > 5000) {
          Serial.println(">>> Client Timeout !");
          client.stop();
          return;
          }
        }


      // Read all the lines of the reply from server and print them to Serial
      while (client.available()) {
      //Serial.print("Data Berhasil!");
      String line = client.readStringUntil('\r');
      Serial.print(line);
 
      if (line.indexOf("sukses") != -1) {
        Serial.println();
        digitalWrite(ledpin, LOW);
        delay(2000);
        digitalWrite(ledpin, HIGH);
      } else if (line.indexOf("gagal") != -1) {
        Serial.println();
        digitalWrite(ledpin, LOW);
      }
    }

  Serial.println();
  Serial.print("closing connection");
  delay(15000);
}
