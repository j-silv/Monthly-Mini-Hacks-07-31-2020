#define LED_PIN 13
#define DELAY_TIME 1000 //delay time is in ms

void setup() {
  pinMode(LED_PIN, OUTPUT);
  digitalWrite(LED_PIN, LOW);
}

void loop() {
  digitalWrite(LED_PIN, HIGH);
  delay(DELAY_TIME);
  digitalWrite(LED_PIN, LOW);
  delay(DELAY_TIME);
}
