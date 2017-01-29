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

//float y1=600,y2=680;
int score;

void draw()
{
  //Background
  background(113,112,112);
  noStroke();
  
  //Road
  //fill(113,112,112);
  //rect(-20,600,530,700);
  //Middle stripes
  //rect(240,y1,20,45);
  //rect(240,y2,20,45);
  
  //White stripes
  fill(255);
  //Side stripes
  rect(10,600,20,120);
  rect(470,600,20,120);
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
 // s7.create();
  //s7.move();
  
  //Car
  car.create();
  car.move();
  car.score();
 
   //Move white middle stripes
   //y1++;
   //y2++;
   
   /*
  //Bring stripes back to top of road 
   if(y1>=750)
   {
     y1 = 598;
   }
   if(y2 >= 750)
   {
     y2 = 598;
   }
   */
  
  //Blocks implemented
  b1.create();
  //BadBlocks implemented
  bb1.create();
}