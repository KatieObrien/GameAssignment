//ROAD STRIPES
Stripes s1 = new Stripes(0);
Stripes s2 = new Stripes(150);
Stripes s3 = new Stripes(300);
Stripes s4 = new Stripes(450);
Stripes s5 = new Stripes(600);
Stripes s6 = new Stripes(-150);

//Car
Car car = new Car(210);

//COINS
Blocks b1 = new Blocks(65,-120); 
Blocks b2 = new Blocks(65,-320); 
Blocks b3 = new Blocks(235,-420); 
Blocks b4 = new Blocks(255,-100); 
Blocks b5 = new Blocks(430,-520); 
Blocks b6 = new Blocks(370,-620); 
Blocks b7 = new Blocks(320,-220); 
Blocks b8 = new Blocks(380,-720);

//BOMBS
BadBlocks bb1 = new BadBlocks(300,-170);
BadBlocks bb2 = new BadBlocks(200,-170);
BadBlocks bb3 = new BadBlocks(400,-170);

void setup()
{
  size(500,700);
}

int score;
//float x = 20;
int count = 0;


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
  b2.create();
  b2.move();
  b3.create();
  b3.move();
  b4.create();
  b4.move();
  b5.create();
  b5.move();
  b6.create();
  b6.move();
  b7.create();
  b7.move();
  b8.create();
  b8.move();
  
  //BadBlocks implemented
  bb1.create();
  bb1.move();
  
  if(bb1.xpos  >= car.xpos && bb1.xpos <= car.xpos + 90 && 
  bb1.ypos >= car.ypos && bb1.ypos <= car.ypos + 100)
  {
    car.xpos = -200;
    car.ypos = -200;
    bb1.xpos = -200;
    bb1.ypos = -200;
    count ++;
  }
  if(bb2.xpos  >= car.xpos && bb2.xpos <= car.xpos + 90 && 
  bb2.ypos >= car.ypos && bb2.ypos <= car.ypos + 100)
  {
    car.xpos = -200;
    car.ypos = -200;
    bb2.xpos = -200;
    bb2.ypos = -200;
    count ++;
  }
  if(bb3.xpos  >= car.xpos && bb3.xpos <= car.xpos + 90 && 
  bb3.ypos >= car.ypos && bb3.ypos <= car.ypos + 100)
  {
    car.xpos = -200;
    car.ypos = -200;
    bb3.xpos = -200;
    bb3.ypos = -200;
    count ++;
  }
  if(score >= 1000)
  {
    bb1.ypos = bb1.ypos + 3;
    bb2.create();
    bb2.move();
    bb2.ypos = bb2.ypos + 3;
  }
  if(score >= 2000)
  {
    bb1.ypos = bb1.ypos + 3;
    bb2.ypos = bb2.ypos + 3;
    bb3.ypos = bb2.ypos + 3;
    bb3.create();
    bb3.move();
  }
  
  
  //COINSS
  if(b1.pos.x  >= car.xpos && b1.pos.x <= car.xpos + 90 && 
  b1.pos.y >= car.ypos && b1.pos.y <= car.ypos + 100)
  {
    score = score + 100;
    b1.pos.y = - 200;
    b1.pos.x = random(40,width-40);
  }
  if(b2.pos.x  >= car.xpos && b2.pos.x <= car.xpos + 90 && 
  b2.pos.y >= car.ypos && b2.pos.y <= car.ypos + 100)
  {
    score = score + 100;
    b2.pos.y = - 200;
    b2.pos.x = random(40,width-40);
  }
  if(b3.pos.x  >= car.xpos && b3.pos.x <= car.xpos + 90 && 
  b3.pos.y >= car.ypos && b3.pos.y <= car.ypos + 100)
  {
    score = score + 100;
    b3.pos.y = - 200;
    b3.pos.x = random(40,width-40);
  }
  if(b4.pos.x  >= car.xpos && b4.pos.x <= car.xpos + 90 && 
  b4.pos.y >= car.ypos && b4.pos.y <= car.ypos + 100)
  {
    score = score + 100;
    b4.pos.y = - 200;
    b4.pos.x = random(40,width-40);
  }
  if(b5.pos.x  >= car.xpos && b5.pos.x <= car.xpos + 90 && 
  b5.pos.y >= car.ypos && b5.pos.y <= car.ypos + 100)
  {
    score = score + 100;
    b5.pos.y = - 200;
    b5.pos.x = random(40,width-40);
  }
  if(b6.pos.x  >= car.xpos && b6.pos.x <= car.xpos + 90 && 
  b6.pos.y >= car.ypos && b6.pos.y <= car.ypos + 100)
  {
    score = score + 100;
    b6.pos.y = - 200;
    b6.pos.x = random(40,width-40);
  }
  if(b7.pos.x  >= car.xpos && b7.pos.x <= car.xpos + 90 && 
  b7.pos.y >= car.ypos && b7.pos.y <= car.ypos + 100)
  {
    score = score + 100;
    b7.pos.y = - 200;
    b7.pos.x = random(40,width-40);
  }
  if(b8.pos.x  >= car.xpos && b8.pos.x <= car.xpos + 90 && 
  b8.pos.y >= car.ypos && b8.pos.y <= car.ypos + 100)
  {
    score = score + 100;
    b8.pos.y = - 200;
    b8.pos.x = random(40,width-40);
  }
  
  if(count >= 1)
  {
    background(0);
    text("Game Over",200,340);
  }
  
}