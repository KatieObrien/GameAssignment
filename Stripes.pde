class Stripes
{
  
  float ypos;
  
  Stripes(float y)
  {
    ypos = y;
  }
  
  void create()
  {
    fill(255);
    rect(240,ypos,20,75);
  }
  
  void move()
  {
    //Move stripe
    ypos ++;
    
    //Bring stripe back to top of road 
    if(ypos>=750)
    {
      ypos = -150;
     }
  }
}