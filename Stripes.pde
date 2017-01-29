class Stripes
{
  
  float ypos;
  
  Stripes(float y)
  {
    ypos = y;
  }
  
  void create()
  {
    rect(240,ypos,20,45);
  }
  
  void move()
  {
    //Move stripe
    ypos ++;
    
    //Bring stripe back to top of road 
    if(ypos>=750)
    {
      ypos = -50;
     }
  }
}