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
BadBlocks bb1 = new BadBlocks(50,-170);
BadBlocks bb2 = new BadBlocks(150,-170);
BadBlocks bb3 = new BadBlocks(250,-170);
BadBlocks bb4 = new BadBlocks(350,-170);
BadBlocks bb5 = new BadBlocks(450,-170);

//POWERUPS
Power p1 = new Power(95,-820);

boolean[]keys = new boolean[1000];
PShape carr;
PFont font;
PImage sign;
PImage cherry;
PImage bomb;
PImage coin;

import ddf.minim.*;

Minim minim;
AudioPlayer mainsong;
AudioPlayer bombsong;
AudioPlayer powersong;
AudioPlayer coinsong;

void setup()
{
  size(500,700);
  
  minim = new Minim(this);
  mainsong = minim.loadFile("mainsong.mp3");
  bombsong = minim.loadFile("Bomb.mp3");
  powersong = minim.loadFile("PowerUpsound.mp3");
  coinsong = minim.loadFile("Coinsound.mp3");
  
  
  sign = loadImage("DSIGN.png");
  cherry = loadImage("CHERRU.png");
  bomb = loadImage("bomb.png");
  coin = loadImage("Coin.png");
    
  carr = createShape();
  carr.beginShape();
  carr.fill(255,7,3);
  carr.noStroke();
  carr.vertex(170, 280);
  carr.vertex(170, 400);
  carr.vertex(630, 400);
  carr.vertex(630, 280);
  carr.vertex(550, 280);
  carr.vertex(550, 190);
  carr.vertex(250, 190);
  carr.vertex(250, 280);
  carr.endShape(CLOSE);
}

int score;
int count = 0;
int count2 = 0;
int w = 20,e = 20;

float x1 = -650, x2 = -380, x3 = -100;
float xx1 = -650, xx2 = -380, xx3 = -100;

//To change start page
void keyPressed()
{
  keys[keyCode]=true;
}

boolean checkKey(int k)
{
  if(keys.length >= k)
  {
    return keys[k] || keys[Character.toUpperCase(k)];
  }
  return false;
}


void draw()
{
    if(count <= 0)
    {
      mainsong.play();
    }
    else 
    {
      mainsong.pause();
    }
    background(113,112,112);
  fill(139,201,250);
  rect(0,0,550,350);
  fill(255);
  rect(25,505,100,20);
  rect(225,505,100,20);
  rect(425,505,100,20);
  
  noStroke();
  fill(0);
  
  shape(carr,x1,0);
  
  ellipse(x2,390,80,80);
  ellipse(x3,390,80,80);
 
  for(int i = 0; i <5; i++)
  {
    x1 = x1 + 1;
    x2 = x2 + 1;
    x3 = x3 + 1;
  }
  if(x1 >= 350)
  {
    x1 = x1 -1;
    font = loadFont("Avenir-BlackOblique-40.vlw");
    textFont(font);
    text("PRESS SPACE TO START",20,290);
  }
  
  if(checkKey(' '))
  {
    clear();
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
  
  //PowerUP 
  p1.create();
  p1.move();
  
  if(p1.pos.x  >= car.xpos && p1.pos.x <= car.xpos + 90 && 
  p1.pos.y >= car.ypos && p1.pos.y <= car.ypos + 100)
  {
    powersong.play();
    p1.pos.y = -200;
    score = score + 150;
    bb1.ypos = - 300;
    bb2.ypos = - 500;
    bb3.ypos = - 600;
    powersong.rewind();
  }
  
  
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
  if(bb4.xpos  >= car.xpos && bb4.xpos <= car.xpos + 90 && 
  bb4.ypos >= car.ypos && bb4.ypos <= car.ypos + 100)
  {
    car.xpos = -200;
    car.ypos = -200;
    bb4.xpos = -200;
    bb4.ypos = -200;
    count ++;
  }
  if(bb5.xpos  >= car.xpos && bb5.xpos <= car.xpos + 90 && 
  bb5.ypos >= car.ypos && bb5.ypos <= car.ypos + 100)
  {
    car.xpos = -200;
    car.ypos = -200;
    bb5.xpos = -200;
    bb5.ypos = -200;
    count ++;
  }
  if(score >= 500)
  {
    bb1.ypos = bb1.ypos + 3;
    bb2.ypos = bb2.ypos + 3;
    bb2.create();
    bb2.move();
  }
  if(score >= 1000)
  {
    bb1.ypos = bb1.ypos + 3;
    bb2.ypos = bb2.ypos + 3;
    bb3.ypos = bb3.ypos + 3;
    bb3.create();
    bb3.move();
  }
  if(score >= 1500)
  {
    bb1.ypos = bb1.ypos + 3;
    bb2.ypos = bb2.ypos + 3;
    bb3.ypos = bb3.ypos + 3;
    bb4.ypos = bb4.ypos + 3;
    bb4.create();
    bb4.move();
  }
  if(score >= 2000)
  {
    bb1.ypos = bb1.ypos + 3;
    bb2.ypos = bb2.ypos + 3;
    bb3.ypos = bb3.ypos + 3;
    bb4.ypos = bb4.ypos + 3;
    bb5.ypos = bb5.ypos + 3;
    bb5.create();
    bb5.move();
  }
  
  
  //COINSS
  if(b1.pos.x  >= car.xpos && b1.pos.x <= car.xpos + 90 && 
  b1.pos.y >= car.ypos && b1.pos.y <= car.ypos + 100)
  {
    score = score + 100;
    b1.pos.y = - 200;
    b1.pos.x = random(40,width-40);
    coinsong.rewind();
    coinsong.play();
    
  }
  if(b2.pos.x  >= car.xpos && b2.pos.x <= car.xpos + 90 && 
  b2.pos.y >= car.ypos && b2.pos.y <= car.ypos + 100)
  {
    score = score + 100;
    b2.pos.y = - 200;
    b2.pos.x = random(40,width-40);
    coinsong.rewind();
    coinsong.play();
  }
  if(b3.pos.x  >= car.xpos && b3.pos.x <= car.xpos + 90 && 
  b3.pos.y >= car.ypos && b3.pos.y <= car.ypos + 100)
  {
    score = score + 100;
    b3.pos.y = - 200;
    b3.pos.x = random(40,width-40);
    coinsong.rewind();
    coinsong.play();
  }
  if(b4.pos.x  >= car.xpos && b4.pos.x <= car.xpos + 90 && 
  b4.pos.y >= car.ypos && b4.pos.y <= car.ypos + 100)
  {
    score = score + 100;
    b4.pos.y = - 200;
    b4.pos.x = random(40,width-40);
    coinsong.rewind();
    coinsong.play();
  }
  if(b5.pos.x  >= car.xpos && b5.pos.x <= car.xpos + 90 && 
  b5.pos.y >= car.ypos && b5.pos.y <= car.ypos + 100)
  {
    score = score + 100;
    b5.pos.y = - 200;
    b5.pos.x = random(40,width-40);
    coinsong.rewind();
    coinsong.play();
  }
  if(b6.pos.x  >= car.xpos && b6.pos.x <= car.xpos + 90 && 
  b6.pos.y >= car.ypos && b6.pos.y <= car.ypos + 100)
  {
    score = score + 100;
    b6.pos.y = - 200;
    b6.pos.x = random(40,width-40);
    coinsong.rewind();
    coinsong.play();
  }
  if(b7.pos.x  >= car.xpos && b7.pos.x <= car.xpos + 90 && 
  b7.pos.y >= car.ypos && b7.pos.y <= car.ypos + 100)
  {
    score = score + 100;
    b7.pos.y = - 200;
    b7.pos.x = random(40,width-40);
    coinsong.rewind();
    coinsong.play();
  }
  if(b8.pos.x  >= car.xpos && b8.pos.x <= car.xpos + 90 && 
  b8.pos.y >= car.ypos && b8.pos.y <= car.ypos + 100)
  {
    score = score + 100;
    b8.pos.y = - 200;
    b8.pos.x = random(40,width-40);
    coinsong.rewind();
    coinsong.play();
  }
  
  if(count >= 1)
  {
    noStroke();
    background(113,112,112);
    fill(139,201,250);
    rect(0,0,550,350);
    fill(255);
    rect(25,505,100,20);
    rect(225,505,100,20);
    rect(425,505,100,20);
    
    //Bomb
    image(bomb,340,350,80,80);
  
    noStroke();
    fill(0);
  
    shape(carr,xx1,0);
  
    ellipse(xx2,390,80,80);
    ellipse(xx3,390,80,80);
 
    for(int i = 0; i <5; i++)
    {
      xx1 = xx1 + 1;
      xx2 = xx2 + 1;
      xx3 = xx3 + 1;
    }
    if(xx1 >= -250)
    {
      bombsong.play();
    }
    if(xx1 >= -150)
    {
      background(255,0,0);
      font = loadFont("Avenir-BlackOblique-70.vlw");
      textFont(font);
      text("BOOM",130,350);
      count2 ++;
    }
    if (count2 >= 2)
    {
      fill(0);
      rect(0,-20,w,e);
    
      if(w < width)
      {
        w = w + 30;
      }
      if(w >= width)
      {
        e = e + 10;
      }
      if(e >= 750)
      {
        fill(255);
        text("GAME OVER",30,350);
      }
    }
  }
  }
  
}