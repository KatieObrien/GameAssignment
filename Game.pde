Blocks b1 = new Blocks(20,-120); 

void setup()
{
  size(500,700);
  
}

float x = 210;
float ex1 = 230;
float ex2 = 280;
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
  fill(252,251,207);
  ellipse(ex1,625,20,20);
  ellipse(ex2,625,20,20);
  fill(255,7,3);
  rect(x,620,90,100);
 
 //Move car left 
 if(mouseX <= 200)
 {
   x = x - 3;
   ex1 = ex1 - 3;
   ex2 = ex2 - 3;
 }
 
 //Move car right
 if(mouseX >= 300)
 {
   x = x + 3;
   ex1 = ex1 + 3;
   ex2 = ex2 + 3;
 }
 
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
   
   //Score for car if its on screen
  if(x >=0 &&  x <= 480)
  {
    score += 1;
  }
  
  //Score printed on screen
  fill(255);
  textSize(20);
  text (score,450,20);
  
  //Blocks implemented
  b1.create();
}