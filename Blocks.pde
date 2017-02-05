class Blocks
{
  float xpos,ypos;
  
  Blocks(float y)
  {
    xpos = random(40,width-40);
    ypos = y;
  }
  void create()
  {
    //stroke(0);
    fill(224,218,18);
    ellipse(xpos,ypos,40,40);
  }
  void move()
  {
    
    b1.ypos = b1.ypos + 5;
  
    if(ypos > height)
    {
      ypos = - 120;
      xpos = random(40,width-40);
    }
  }
}