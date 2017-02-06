//calling classes 
import processing.sound.*;
Track track;
Car car;

SoundFile hornSound; 
boolean horn;

void setup()
{
  hornSound = new SoundFile(this, "horn.wav");
  size(800,600);
  
  track = new Track();
  car = new Car();
   
   horn = true;

  
  
} 
void draw()
{
   
   
  track.drawtrack();
  
  car.carPlace();
 
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