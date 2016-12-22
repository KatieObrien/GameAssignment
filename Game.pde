PShape car;
PFont font;

void setup()
{
  size(800,500);
  
  font = createFont("AlBayan-Bold-48.vlw",26);
  textFont(font);
  
  car = createShape();
  car.beginShape();
  car.fill(255,7,3);
  car.noStroke();
  car.vertex(170, 280);
  car.vertex(170, 400);
  car.vertex(630, 400);
  car.vertex(630, 280);
  car.vertex(550, 280);
  car.vertex(550, 190);
  car.vertex(250, 190);
  car.vertex(250, 280);
  car.endShape(CLOSE);
  
}

float x1 = -650, x2 = -380, x3 = -100;

void keyPressed()
{
  keys[keyCode] = true;
}
boolean checkKey(int k)
{
  if (keys.length >= k)
  {
    return keys[k] || keys[Character.toUpperCase(k)];
  }
  return false;
  
}

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
  
  shape(car,x1,0);
  
  ellipse(x2,390,80,80);
  ellipse(x3,390,80,80);
 
  for(int i = 0; i <5; i++)
  {
    x1 = x1 + 1;
    x2 = x2 + 1;
    x3 = x3 + 1;
  }
  if (x1 >= 700)
  {
    fill(0);
    //stroke(0);
    text("Press space key to start",260,250);
  }
  if 

}