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