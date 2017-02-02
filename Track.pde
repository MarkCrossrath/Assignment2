class Track
{
   
  int border =50;
  int inside= border + 100;
    void drawtrack()
    { 
      fill(70,141,15);
      rect(0,0,800,600);
      stroke(255);
      fill(0);
      rect(200, 0, 400, 600);
      fill(255);
      rect(390,10,25,75);
      rect(390,125,25,75);
      rect(390,250,25,75);
      rect(390,375,25,75);
      rect(390,500,25,75);
       float xright  = 800;
     float xleft = 0;
     float ytop = 0;
     float ybottom = 600;
    float mposx = mouseX;
     float mposy = mouseY;
  fill(0);
      text( "COORDINATES",620,250);
    if (mposx< xright && mposx > xleft && mposy > ytop && mposy < ybottom)
    {
  
      text(mouseX +"," + mouseY,720,250);
    }

      
      
      
    }

}