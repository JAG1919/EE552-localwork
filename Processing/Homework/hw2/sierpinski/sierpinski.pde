float points(float a, float b){
  if(a >= b){
    return b + (a - b)/2.0;
  } else {
    return a + (b - a)/2.0;
  }
}

void sierpinski(int iter, float x1, float y1, float x2, float y2, float x3, float y3){
  iter--;
  if (iter == 0){
    fill(0);
    triangle(x1, y1, x2, y2, x3, y3);
    return;
  }
  
  //if(iter > 0) {
    sierpinski(iter, x1, y1, points(x1, x2), points(y1, y2), points(x1, x3), points(y1, y3));
    sierpinski(iter, points(x1, x2), points(y1, y2), x2, y2, points(x2, x3), points(y2, y3));
    sierpinski(iter, points(x1, x3), points(y1, y3), points(x2, x3), points(y2, y3), x3, y3);
  //}
}

void setup () {
  size(800,800);
  //background(0);
  //noStroke();
  frameRate(1);
}

int maxiterations = 7;
int iteration = 1;
void draw(){
  if (maxiterations >= iteration) {
    background(255);
    sierpinski(iteration++, width/2.0, 0, 0, height, width, height);
  } else {
    iteration = 1;
  }  
}
