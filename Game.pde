Car car = new Car(210);

Blocks b1 = new Blocks(20,-120); 
BadBlocks bb1 = new BadBlocks(400,-170);

void setup()
{
  size(500,700);
  
}

float y1=600,y2=680;
int score;

void draw()
{
  //Background
  background(139,201,250);
  noStroke();
  
  //Road
  fill(113,112,112);
  rect(-20,600,530,700);
  //White stripes
  fill(255);
  //Middle stripes
  rect(240,y1,20,45);
  rect(240,y2,20,45);
  //Side stripes
  rect(10,600,20,120);
  rect(470,600,20,120);
  
  //Car
  car.create();
  car.move();
  car.score();
 
   //Move white middle stripes
   y1++;
   y2++;
   
  //Bring stripes back to top of road 
   if(y1>=750)
   {
     y1 = 598;
   }
   if(y2 >= 750)
   {
     y2 = 598;
   }
  
  //Blocks implemented
  b1.create();
  //BadBlocks implemented
  bb1.create();
}