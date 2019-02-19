void setup() {
  size(600,400);
  fill(255,0,0);
  stroke(0,255,0);
}

int x = 0;
int y = 0;
int dx = 7, dy = 2;
void draw()  {
  background(0);
  rect(x,y,20,30);
  x += dx;
  y += dy;
  if (x < 0 || x >= width)
    dx = -dx;
  if(y < 0 || y >= height)
    dy = -dy;
}
