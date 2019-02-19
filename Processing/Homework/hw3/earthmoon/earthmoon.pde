PShape moon;
PShape earth;
void setup() {
  size(800,800,P3D);
  noStroke();
  PImage image = loadImage("moon.jpg");
  PImage image2 = loadImage("earth.jpg");
  moon = (createShape(SPHERE,75));
  earth = (createShape(SPHERE,300));
  moon.setTexture(image);
  earth.setTexture(image2);
}

int zoom = -3500;
float moonrot = 0; 
final float DEGTORAD = PI/180;
float orbit = 0;
float earthrot = 0;
float er = .01;
float mr = er*.5;
void draw(){
  background(0);
  translate(width/2,height/2, zoom);
  pushMatrix();
  //scale(0.3,-0.3,0.3);
  rotateZ(-5.6*DEGTORAD);
  rotateY(moonrot);
  rotateY(orbit);
  translate(2000,0,0);
  rotateY(-orbit);
  shape(moon);
  moonrot += mr;
  orbit += 0.01;
  popMatrix();
  rotateZ(23.5*DEGTORAD);
  rotateY(earthrot);
  shape(earth);
  earthrot += er;
}
