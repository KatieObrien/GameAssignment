Blocks b1 = new Blocks();

void setup()
{
  size(500,700);
  
}

float x = 210;
float ex1 = 230;
float ex2 = 280;
float y1=600,y2=680;
int score;
//int END = 150;
//int m = millis();

void draw()
{
  background(139,201,250);
  noStroke();
  fill(113,112,112);
  rect(-20,600,530,700);
  fill(255);
  rect(240,y1,20,45);
  rect(240,y2,20,45);
  rect(10,600,20,120);
  rect(470,600,20,120);
  
  fill(252,251,207);
  ellipse(ex1,625,20,20);
  ellipse(ex2,625,20,20);
  fill(255,7,3);
  rect(x,620,90,100);
  
 if(mouseX <= 200)
 {
   x--;
   ex1--;
   ex2--;
 }
 
 if(mouseX >= 300)
 {
   x++;
   ex1++;
   ex2++;
 }
 
   y1++;
   y2++;
   fill(139,201,250);
  rect(-20,-10,600,530);
   if(y1>=750)
   {
     y1 = 598;
   }
   if(y2 >= 750)
   {
     y2 = 598;
   }
   
  if(x >=0 &&  x <= 480)
  {
    score += 1;
  }
  
  fill(255);
  textSize(20);
  text (score,450,20);
  
  b1.blocks(20,-150);
}