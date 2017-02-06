class AICar
{
  
  

float x = 200;
  float y = 50; 
  float speed= 2;
  void drawCar()
  {
    
    move();
    display();
  }
  void move()
  {
      
    y= y+speed;
    if(y>height)
    {
      y= 0;
    }
  }
    
    void display()
   {
      fill(255);
      ellipse(x,y,50,50);
   }
}
  