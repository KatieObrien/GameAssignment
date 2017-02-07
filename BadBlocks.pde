class BadBlocks
{
  PVector pos;
  
  BadBlocks(float x, float y)
  {
    pos = new PVector(x,y);
    
  }
  
  void create()
  {
    fill(0);
    noStroke();
    ellipse(pos.x,pos.y,30,30);
    rect(pos.x-2.5,pos.y-23,5,20);
    fill(255,0,0);
    rect(pos.x-3,pos.y-23,5.5,3);
  }
  
  void move()
  {
    bb1.pos.y = bb1.pos.y + 4;
    
    if(pos.y > height)
    {
      pos.y = - 120;
      pos.x = random(30,width-30);
    }
  }
}