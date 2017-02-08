class Traffic
{
   PVector posT;
   
 int getRandomX()
{
  return int(random(0,300));
}

float  X = random(200,400);
int[] carY = {0};
int speed= 2;


void carTraffic()
{
float  X = random(200,400);
posT = new PVector(200,200);
    fill(255,0,0);
    for (int i=0; i<1; i++)
    {
      carY[i]= carY[i] + speed;
      rect(posT.X, carY[i]++, 50, 100);  
      if(carY[i] > 200)
      {
         X = random(0, 300);
          carY[i] = -200;
      }
    }
   
}
  
  
}