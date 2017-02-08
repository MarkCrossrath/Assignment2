class Car 
{
  
  PShape group;
  PVector pos;
 


 Car () {
  // Make a group PShape
  group = createShape(GROUP);
  
  // Make three shapes
  pos = new PVector(100, height/2);
  
 // float x = 0;
  //float y = 0;
  PShape window1 = createShape(RECT, pos.x+3,27,44, 10);
  window1.setFill(color(118,203,239));
  PShape body = createShape(RECT, pos.x, 0, 50, 110,5);
  PShape strip = createShape(RECT, pos.x+12,0,10,110);
  strip.setFill(color(10,55,233));
  PShape strip1 = createShape(RECT,pos.x+28,0,10,110);
  strip1.setFill(color(10,55,233));
  
  body.setFill(color(225));
  PShape window2 = createShape(RECT,pos.x+3,75,44,10);
  window2.setFill(color(118,203,239));
  
  PShape bonnet = createShape();
  bonnet.beginShape();
  bonnet.vertex(pos.x, 23);
  bonnet.vertex(pos.x+50, 23);
  bonnet.endShape();
  PShape boot = createShape();
  boot.beginShape();
  boot.vertex(pos.x,90);
  boot.vertex(pos.x+50,90);
  boot.endShape();
  PShape roof1 = createShape();
  roof1.beginShape();
  roof1.vertex(pos.x,40);
  roof1.vertex(pos.x+50,40);
  roof1.endShape();
  PShape roof2 = createShape();
  roof2.beginShape();
  roof2.vertex(pos.x,70);
  roof2.vertex(pos.x+50,70);
  roof2.endShape();
 
  
  
 
  
  // Add all children
  group.addChild(body);
  group.addChild(strip);
  group.addChild(strip1);
  group.addChild(window1);
  group.addChild(window2);
  group.addChild(bonnet);
  group.addChild(boot);
  group.addChild(roof1);
  group.addChild(roof2);
 
}


void carPlace() {
   
 
   

  if (keyPressed)
  {
 if (keyCode == LEFT)
  {

     pos.x -= 10;
  }
    
}
 if (keyPressed)
 {
 if (keyCode == RIGHT)
  {
    
  pos.x += 10;
  }

  if(pos.x < 100)
  {
    pos.x+=10;
  }
  if(pos.x > 400)
  {
    pos.x-=10;
  }
  
  
  
 }
 translate(pos.x, pos.y);
  shape(group, 0, 0);


}
}