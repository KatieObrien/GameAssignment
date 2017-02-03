Stripes s1 = new Stripes(0);
Stripes s2 = new Stripes(150);
Stripes s3 = new Stripes(300);
Stripes s4 = new Stripes(450);
Stripes s5 = new Stripes(600);
Stripes s6 = new Stripes(-150);

Car car = new Car(210);

Blocks b1 = new Blocks(20,-120); 
BadBlocks bb1 = new BadBlocks(400,-170);

void setup()
{
  size(500,700);
}

int score;

void draw()
{
    //Background
  background(113,112,112);
  noStroke();
  
  //White stripes
  fill(255);
  //Side stripes
  rect(10,-5,20,710);
  rect(470,-5,20,710);
  
  //Moving Stripes
  s1.create();
  s1.move();
  s2.create();
  s2.move();
  s3.create();
  s3.move();
  s4.create();
  s4.move();
  s5.create();
  s5.move();
  s6.create();
  s6.move();
  
  fill(0);
  rect(430,-3,90,28);
  
  fill(255);
  textSize(20);
  text (score,440,20);
  
  //Car
  car.create();
  car.move();
  
  //Blocks implemented
  b1.create();
  b1.move();
  b1.ypos = b1.ypos + 5;
  
  //BadBlocks implemented
  bb1.create();
  bb1.move();
  bb1.ypos = bb1.ypos + 2;
  
  if(bb1.xpos  >= car.xpos && bb1.xpos <= car.xpos + 90 && 
  bb1.ypos >= car.ypos && bb1.ypos <= car.ypos + 100)
  {
    background(0);
    text("GAME OVER",200,250);
    car.xpos = -200;
    car.ypos = -200;
    bb1.xpos = -200;
    bb1.ypos = -200;
  }
  
  if(b1.xpos  >= car.xpos && b1.xpos <= car.xpos + 90 && 
  b1.ypos >= car.ypos && b1.ypos <= car.ypos + 100)
  {
    score = score + 100;
    b1.ypos = - 200;
  }
  
}