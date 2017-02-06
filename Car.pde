class Car 
{
  
  PShape group;


 Car () {
  // Make a group PShape
  group = createShape(GROUP);
  
  // Make three shapes
 
 
  PShape window1 = createShape(RECT, -22,-27,44, 10);
  PShape body = createShape(RECT, -25, -50, 50, 110,5);
  body.setFill(color(37, 142, 42));
  PShape window2 = createShape(RECT, -22,27,44,10);
  PShape bonnet = createShape();
  bonnet.beginShape();
  bonnet.vertex(-25, -30);
  bonnet.vertex(25, -30);
  bonnet.endShape();
  PShape boot = createShape();
  boot.beginShape();
  boot.vertex(-25,40);
  boot.vertex(25,40);
  boot.endShape();
  PShape roof1 = createShape();
  roof1.beginShape();
  roof1.vertex(-25,-13);
  roof1.vertex(25,-13);
  roof1.endShape();
  PShape roof2 = createShape();
  roof2.beginShape();
  roof2.vertex(-25,22);
  roof2.vertex(25,22);
  roof2.endShape();
  
  
 
  
  // Add all three as children
  group.addChild(body);
  group.addChild(window1);
  group.addChild(window2);
  group.addChild(bonnet);
  group.addChild(boot);
  group.addChild(roof1);
  group.addChild(roof2);
 
}


void carPlace() {
   
  float xright  = 575;
     float xleft = 225;
    
    float mposx = mouseX;
   
 if (mposx< xright && mposx > xleft )
 {
  if (keyPressed)
  {
 if (keyCode == LEFT)
  {
     group.translate(-10,0);
  }
    
}
 if (keyPressed)
 {
 if (keyCode == RIGHT)
  {
    
  group.translate(10,0);
  }
 }
  shape(group);
}

}
}