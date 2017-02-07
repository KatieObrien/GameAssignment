class Blocks
{
  PVector pos;
  //float xpos,ypos;
  
  Blocks(float x,float y)
  {
    pos = new PVector (x,y);
    //xpos = random(40,width-40);
    //ypos = y;
  }
  void create()
  {
    //stroke(0);
    fill(224,218,18);
    ellipse(pos.x,pos.y,40,40);
  }
  void move()
  {
    
    pos.y = pos.y + 5;
  
    if(pos.y > height)
    {
      pos.y = - 120;
      pos.x = random(40,width-40);
    }
  }
}