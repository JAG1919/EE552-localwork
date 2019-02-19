float upcount(int number) {
  float sum = 0;
  for(float x = 1;x <= number;x++){
    sum += 1.0/(x * x);
  }
  return sqrt(sum*6);
}

float downcount(int number) {
  float sum = 0;
  for(float x = number;x > 0;x--){
    sum += 1.0/(x * x);
  }
  return sqrt(sum*6);
}

void setup() {
  println("The answer for n = 1 counting upward: " + upcount(1));
  println("The answer for n = 10 counting upward: " + upcount(10));
  println("The answer for n = 100 counting upward: " + upcount(100));
  println("The answer for n = 1000 counting upward: " + upcount(1000));
  println("The answer for n = 10000 counting upward: " + upcount(10000));
  println("The answer for n = 100000 counting upward: " + upcount(100000));
  
  println("The answer for n = 1 counting downward: " + downcount(1));
  println("The answer for n = 10 counting downward: " + downcount(10));
  println("The answer for n = 100 counting downward: " + downcount(100));
  println("The answer for n = 1000 counting downward: " + downcount(1000));
  println("The answer for n = 10000 counting downward: " + downcount(10000));
  println("The answer for n = 100000 counting downward: " + downcount(100000));
  
  println("Yes, I can see that the higher n gets the closer it represents pi. Downward is more accurate.");
  
  exit();
}
