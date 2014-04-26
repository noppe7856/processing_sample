int i = 0;
double dSpeed = 0.001;



void setup()
{
  size(500, 500, P3D);
  frameRate(60);
  smooth();
}
void draw()
{
  background(255);
  
  translate(580, 480, 0);
  rotateX(-0.5);
  rotateY(i*dSpeed);
  noFill();
  fill(155);
  box(400);
  i++;
}


