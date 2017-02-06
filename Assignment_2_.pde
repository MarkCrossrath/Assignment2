//calling classes 
import processing.sound.*;
Track track;
Car car;
AICar aicar;

SoundFile hornSound; 
boolean horn;

void setup()
{
  hornSound = new SoundFile(this, "horn.wav");
  size(800,600);
  
  track = new Track();
  car = new Car();
  aicar = new AICar();
   
   horn = true;

  
  
} 
void draw()
{
   
   
  track.drawtrack();
  
  car.carPlace();
  aicar. drawCar();
 
}

void mousePressed()
{
  if(horn == true)
  {
    hornSound.play();
    horn = false;
  }
  
}

void mouseReleased()
{
  horn = true;
}