float t = 0;
float r = 20;
float pi =3.14159265;
float angleVel;

void setup() {
  size(400, 400);
  angleVel = 2.0 * pi / 180;
}


void draw() {
  background(255);
  float rx = 1.3 * 50 * cos(angleVel * t);
  float ry = 0.3 * 50 * sin(2 * angleVel * t - pi / 2);
  float x = rx + (width - r) / 2.0;
  float y = ry + 3 * (height - r) / 4.0;

  ellipse(x, y, 40, 40);
  line(x, y, width/2, height/2);

  t++;
  
  println("rx = " + rx + "\n" + "ry = " + ry + "\n" + "x = " + x + "\n" + "y = " + y + "\n");
}