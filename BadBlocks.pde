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
    fill(0);
    noStroke();
    ellipse(xpos,ypos,30,30);
    rect(xpos-2.5,ypos-23,5,20);
    fill(255,0,0);
    rect(xpos-3,ypos-23,5.5,3);
  }
  
  void move()
  {
    if(ypos > height)
    {
      ypos = - 120;
    }
  }
}