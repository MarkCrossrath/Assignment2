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
    

    if (frameCount % 70 == 0)
    {
      
    x= int( random(0,width-200));
    
  x+=200;
    
    
    }//end if
  }
    
    void display()
   {
      fill(255);
      ellipse(x,y,50,50);
   }
}
  