class Car
{
  float xpos;
  
  Car(float x)
  {
    xpos = x;
  }
  void create()
  {
    fill(252,251,207);
    ellipse(xpos+20,625,20,20);
    ellipse(xpos+70,625,20,20);
    fill(255,7,3);
    rect(xpos,620,90,100);
  }
  void move()
  {
    //Move car left
    if(mouseX <= 200)
    {
       xpos = xpos - 3;
    }
 
   //Move car right
   if(mouseX >= 300)
   {
     xpos = xpos + 3;
   }
  }
}