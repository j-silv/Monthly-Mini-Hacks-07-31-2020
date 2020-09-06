#define LED_PIN 13 // this is the pin location for the onboard LED
#define DELAY_TIME 1000 // delay time for blinking (milliseconds)

// this block of code runs once
void setup() {
  // set up pin connected to onboard LED as an output
  pinMode(LED_PIN, OUTPUT);

  // initalize the LED as turned off
  digitalWrite(LED_PIN, LOW);
}

// this block of code repeats endlessly
void loop() {
  // turn the LED on
  digitalWrite(LED_PIN, HIGH);

  // pause for DELAY_TIME
  delay(DELAY_TIME);

  // turn the LED off
  digitalWrite(LED_PIN, LOW);

  // pause for DELAY_TIME
  delay(DELAY_TIME);
}
