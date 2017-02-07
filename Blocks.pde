class Blocks
{
  
  PVector pos;
  //float xpos,ypos;
  
  Blocks(float x,float y)
  {
    pos = new PVector (x,y);
  }
  
  void create()
  {
    image(coin,pos.x-30,pos.y-30,65,65);
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