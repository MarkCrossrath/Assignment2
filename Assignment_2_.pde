//calling classes 
import processing.sound.*;
PImage startScreen;
;
Track track;
Car car;
AICar aicar;

SoundFile hornSound; 
boolean horn;
int stage;

  
void setup()
{
  stage = 1;
  
  size(800,600);
  startScreen = loadImage("hqdefault.jpg");
  image(startScreen,0,0,800,600);
 
  
  
  track = new Track();
  car = new Car();
  aicar = new AICar();
   hornSound = new SoundFile(this, "horn.wav");
   horn = true;
PFont f = createFont("Q.vlw",25);
  
  
} 
void draw()
{
 
  if(stage==1)
  {
    PFont f = createFont("Silom-20.vlw",25);
     fill(0);
   textAlign(CENTER);
   textFont(f);
   textSize(25);
   text("Welcome", 400,300);
   text("Pressing any key to start the game",400,350);
   if(keyPressed == true)
   {
     stage =2 ;
   }
   }
   
   if(stage==2)
   {
     textAlign(CENTER);
     textSize(25);
   text("Please pick the right one for action", 400,400);
   text("S=start",400,450);
   text("I= Instructions",400,475);
   if(keyPressed)
   {
     if (key == 'i')
     {
       String [] instructions = loadStrings("carFile.txt");
       //println(instructions);
       for (int i = 0; i<instructions.length;i++)
       {
       text(instructions[i],400,500);
       }
     }
     if (key =='s')
     {
       stage =3;
     }
     
   }
   }
   
   if (stage==3){
     
  track.drawtrack();
  
  car.carPlace();
  aicar. drawCar();
   }
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