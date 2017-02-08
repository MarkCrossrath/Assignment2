class Traffic
{

   PVector pos;
  
  
   


float  x = random(200,500);
float[] carY = {0};
int speed= 2;


void carTraffic()
{
//float  X = 400;

pos = new PVector(100, 400);

car1 = loadImage("car1.png");

    fill(255,0,0);
    for (int i=0; i<1; i++)
    {
      carY[i]= carY[i] + speed;
      image(car1,x, carY[i]+=10,100,100);  
        if(/* x-25 > mouseX && x-24< mouseX  && */carY[i] > 400)
    {
      stage = 4;
    }
      if(carY[i] > 600)
      {
         x = random(200, 600);
          carY[i] = -200;
      }
       
   }
   if(stage ==4)
   {
     int i = 0; 
     
      ex = loadImage("explosion.png");
     image(ex,x, carY[i]+=10,100,100);
     stage =2;
    }
   
}
  
  
}