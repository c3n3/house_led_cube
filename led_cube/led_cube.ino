
#define NUM_LEDS



void output2(unsigned int data)
{
    byte first = (data & 0x000000FF);
    byte second = ((data & 0x0000FF00) >> 8);
    byte third = ((data & 0x00FF0000) >> 16);
    digitalWrite(latchPin, LOW);
    shiftOut(dataPin, clockPin, LSBFIRST, third);
    shiftOut(dataPin, clockPin, LSBFIRST, second);
    shiftOut(dataPin, clockPin, LSBFIRST, first);
    digitalWrite(latchPin, HIGH);
}
/*
 * setup() - this function runs once when you turn your Arduino on
 * We initialize the serial connection with the computer
 */
void setup() 
{
  
  pinMode(latchPin, OUTPUT);
  pinMode(dataPin, OUTPUT);  
  pinMode(clockPin, OUTPUT);
}

/*
 * loop() - this function runs over and over again
 */
void loop() 
{
  unsigned int data = 1;
//  unsigned int data2 = 32768;
  for (;;) {
//    if (data == 32768) {
//      data = 1;
//    }
//    if (data2 == 1) {
//      data2 = 32768;
//    }
    data++;
    output2(data);
//    data = data << 1;
//    data2 = data2 >> 1;
    delay(1000);
//    delay(0);
  }
}
