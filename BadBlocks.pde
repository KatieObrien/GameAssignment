class BadBlocks
{
  float xpos,ypos;
  
  BadBlocks(float x, float y)
  {
    xpos = x;
    ypos = y;
  }
  
  void create()
  {
    fill(255,3,3);
    rect(xpos,ypos,200,100);
  }
  
  void move()
  {
    ypos = ypos + 5;
    if(ypos > height)
    {
      ypos = - 120;
    }
  }
}