class Power
{
  PVector pos;
  
  Power(float x,float y)
  {
    pos = new PVector (x,y);
  }
  void create()
  {
    stroke(0);
    fill(15,40,250);
    image(cherry,pos.x-43,pos.y-40,80,80);
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