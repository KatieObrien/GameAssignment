class BadBlocks
{
  //PVector pos;
  float xpos,ypos;
  
  BadBlocks(float x, float y)
  {
    //pos = new PVector(x,y);
    xpos = x;
    ypos = y;
  }
  
  void create()
  {
    image(bomb,xpos-40,ypos-40,80,80);
  }
  
  void move()
  {
    ypos = ypos + 4;
    
    if(ypos > height)
    {
      ypos = - 120;
      xpos = random(30,width-30);
    }
  }
}