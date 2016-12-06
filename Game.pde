PShape car;
PShape c

void setup()
{
  size(800,500);
  car = createShape();
  car.beginShape();
  car.fill(255,7,3);
  car.noStroke();
  car.vertex(170, 280);
  car.vertex(170, 420);
  car.vertex(630, 420);
  car.vertex(630, 280);
  car.vertex(550, 280);
  car.vertex(550, 190);
  car.vertex(250, 190);
  car.vertex(250, 280);
  car.endShape(CLOSE);
}

float x1 = -430,x2 = -480,x3 = -100, x4 = -380, x5 = -100;

void draw()
{
  background(139,201,250);
  fill(113,112,112);
  rect(0,350,800,400);
  fill(255);
  rect(50,425,100,20);
  rect(250,425,100,20);
  rect(450,425,100,20);
  rect(650,425,100,20);
  
  noStroke();
  fill(0);
  
  shape(car,0,0);
  
  ellipse(x4,390,80,80);
  ellipse(x5,390,80,80);
 /*
  for(int i = 0; i <5; i++)
  {
    x1 = x1 + 1;
    x2 = x2 + 1;
    x3 = x3 + 1;
    x4 = x4 + 1;
    x5 = x5 + 1;
  }
*/
}