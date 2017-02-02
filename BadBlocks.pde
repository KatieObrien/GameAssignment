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
    point(xpos+100,ypos+50);
    rect(xpos,ypos,200,100);
  }
  
  void move()
  {
    if(ypos > height)
    {
      ypos = - 120;
    }
  }
}