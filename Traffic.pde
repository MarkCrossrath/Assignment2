class Traffic {
  
  int getRandomX()
  void cartraffic()
  
{

  
float[] carX = {getRandomX()};
int[] carY = {0};
int speed= 2;
    fill(255,0,0);
    for (int i=0; i<1; i++)
    {
      carY[i]= carY[i] + speed;
      rect(carX[i], carY[i]++, 50, 100);  
      if(carY[i] > 600)
      {
          carX[i] = random(10, 580);
          carY[i] = -1200;
      }
    }
   
}
  
  
  
}