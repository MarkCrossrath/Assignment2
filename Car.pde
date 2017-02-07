class Car 
{
  
  PShape group;
  PVector pos;


 Car () {
  // Make a group PShape
  group = createShape(GROUP);
  
  // Make three shapes
  pos = new PVector(width/2, height/2);

  PShape window1 = createShape(RECT, 3,27,44, 10);
  PShape body = createShape(RECT, 0, 0, 50, 110,5);
  body.setFill(color(37, 142, 42));
  PShape window2 = createShape(RECT,3,75,44,10);
  PShape bonnet = createShape();
  bonnet.beginShape();
  bonnet.vertex(0, 23);
  bonnet.vertex(50, 23);
  bonnet.endShape();
  PShape boot = createShape();
  boot.beginShape();
  boot.vertex(0,90);
  boot.vertex(50,90);
  boot.endShape();
  PShape roof1 = createShape();
  roof1.beginShape();
  roof1.vertex(0,40);
  roof1.vertex(50,40);
  roof1.endShape();
  PShape roof2 = createShape();
  roof2.beginShape();
  roof2.vertex(0,70);
  roof2.vertex(50,70);
  roof2.endShape();
  body.setFill(color(37, 142, 42));
  
  
 
  
  // Add all children
  group.addChild(body);
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

  if(pos.x < 210)
  {
    pos.x++;
  }
  if(pos.x > 590)
  {
    pos.x--;
  }
  
  
  
 }
 translate(pos.x, pos.y);
  shape(group, 0, 0);


}
}