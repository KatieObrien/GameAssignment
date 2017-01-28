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
    rect(xpos,ypos,200,100);
    ypos = ypos + 5;
  }
}