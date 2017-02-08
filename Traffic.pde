class Traffic
{
   PVector posT;
   
/* int getRandomX()
{
  return int(random(0,300));
}*/

float  x = 200;
float[] carY = {0};
int speed= 2;


void carTraffic()
{
//float  X = 400;

posT = new PVector(random(0,500),0);

    fill(255,0,0);
    for (int i=0; i<1; i++)
    {
      carY[i]= carY[i] + speed;
      rect(posT.x, carY[i]++, 50, 100);  
      if(carY[i] > 600)
      {
         //x = random(0, 300);
          carY[i] = -200;
      }
    }
   
}
  
  
}