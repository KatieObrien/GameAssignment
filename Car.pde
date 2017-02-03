class Car
{
  float xpos;
  float ypos = 620;
  
  Car(float x)
  {
    xpos = x;
  }
  
  void create()
  {
    //Car shape
    fill(252,251,207);
    ellipse(xpos+20,625,20,20);
    ellipse(xpos+70,625,20,20);
    fill(255,7,3);
    rect(xpos,ypos,90,100);
  }
  void move()
  {
    //Move car left
    if(mouseX <= 200)
    {
       xpos = xpos - 3;
       if(xpos <= 0)
       {
         xpos = xpos + 3;
       }
    }
 
   //Move car right
   if(mouseX >= 300)
   {
     xpos = xpos + 3;
     if(xpos >= 410 )
     {
       xpos = xpos - 3;
     }
   }
  }
  
}