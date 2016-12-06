void setup()
{
  size(800,500);
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
  
  ellipse(x4,390,80,80);
  ellipse(x5,390,80,80);
  fill(255,7,3);
  rect(x1,200,330,180);
  rect(x2,280,100,100);
  rect(x3,280,100,100);
  for(int i = 0; i <5; i++)
  {
    x1 = x1 + 1;
    x2 = x2 + 1;
    x3 = x3 + 1;
    x4 = x4 + 1;
    x5 = x5 + 1;
  }
}