class Traffic
{
   PVector posT;
   
/* int getRandomX()
{
  return int(random(0,300));
}*/

float  x = random(200,500);;
float[] carY = {0};
int speed= 2;


void carTraffic()
{
//float  X = 400;



    fill(255,0,0);
    for (int i=0; i<1; i++)
    {
      carY[i]= carY[i] + speed;
      rect(x, carY[i]++, 50, 100);  
      if(carY[i] > 600)
      {
         x = random(200, 600);
          carY[i] = -200;
      }
    }
   
}
  
  
}