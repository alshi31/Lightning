int startX = 150;
int startY = 0;
int endX = 1000;
int endY = 0;
int i;
int j;

void setup()
{
  size(500, 500);
  background(7, 29, 95);
  fill(148, 155, 180);
  rect(75, 200, 350, 300);
  rect(150, 150, 200, 300);
  triangle(200, 150, 300, 150, 250, 100);
  stroke(255, 255, 255);
  line(250, 100, 250, 75);
  fill(3, 131, 27);
  stroke(0, 0, 0);
  rect(0, 350, 500, 200);
  fill(255, 255, 0, 75);
  ellipse(250, 250, 100, 100);
  fill(0, 0, 0);
  ellipse(235, 245, 10, 10);
  ellipse(265, 245, 10, 10);
  ellipse(250, 270, 40, 10);
}
void draw()
{
  int diam = 0;
  float r = 0;
  noFill();
  while (diam < 30) {
    stroke(255, 255, r);
    ellipse(250, 75, diam, diam);
    diam++;
    r+=255/25.0;
  }
    stroke((int)(Math.random()*155+100), 255, 255);
    while (endX < 500)
    {
      endY=startY+(int)(Math.random()*18-9);
      endX=startX+(int)(Math.random()*3);
      line(startY, startX, endY, endX);
      startY=endY;
      startX=endX;
    }
  }
  void mousePressed()
  {
    strokeWeight((int)(Math.random()*5));
    startY=250;
    startX=75;
    endX=(int)(Math.random()*-100);
    endY=(int)(Math.random()*5000);
  }
