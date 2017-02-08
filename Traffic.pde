class Traffic
{
   PVector posT;
 int getRandomX()
{
  return int(random(0,300));
}
//posT = new PVector(200, height/2);
float[] carX = {getRandomX()};
int[] carY = {0};
int speed= 2;


void carTraffic()
{
posT = new PVector(200, height/2);
    fill(255,0,0);
    for (int i=0; i<1; i++)
    {
      carY[i]= carY[i] + speed;
      rect(carX[i], carY[i]++, 50, 100);  
      if(carY[i] > 200)
      {
          carX[i] = random(0, 300);
          carY[i] = -200;
      }
    }
   
}
  
  
}