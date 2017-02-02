class Car
{
  float xpos;
  int score;
  
  Car(float x)
  {
    xpos = x;
  }
  
  void create()
  {
    //Car shape
    fill(252,251,207);
    ellipse(xpos+20,625,20,20);
    ellipse(xpos+70,625,20,20);
    fill(255,7,3);
    rect(xpos,620,90,100);
  }
  void move()
  {
    //Move car left
    if(mouseX <= 200)
    {
       xpos = xpos - 3;
    }
 
   //Move car right
   if(mouseX >= 300)
   {
     xpos = xpos + 3;
   }
  }
  
  void score()
  {
    //Score doesn't go up if car isn't on screen
    if(xpos >=0 &&  xpos <= 480)
    {
      score += 1;
    }
    
    //Score printed on screen
    fill(255);
    textSize(20);
    text (score,440,20);
  }
  
}