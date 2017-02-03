class Blocks
{
  float xpos,ypos;
  
  Blocks(float x, float y)
  {
    xpos = x;
    ypos = y;
  }
  void create()
  {
    fill(255,3,3);
    rect(xpos,ypos,50,50);
  }
  void move()
  {
    if(ypos > height)
    {
      ypos = - 120;
    }
  }
}