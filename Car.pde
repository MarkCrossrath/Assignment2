class Car 
{
  
  PShape group;
  
float x = 378;
 float y = 373;

 Car () {
  // Make a group PShape
  group = createShape(GROUP);
  
  // Make three shapes


  PShape window1 = createShape(RECT, x,y,44, 10);
  PShape body = createShape(RECT, 375, 350, 50, 110,5);
  body.setFill(color(37, 142, 42));
  PShape window2 = createShape(RECT,378,427,44,10);
  PShape bonnet = createShape();
  bonnet.beginShape();
  bonnet.vertex(375, -30);
  bonnet.vertex(425, -30);
  bonnet.endShape();
  PShape boot = createShape();
  boot.beginShape();
  boot.vertex(375,440);
  boot.vertex(425,440);
  boot.endShape();
  PShape roof1 = createShape();
  roof1.beginShape();
  roof1.vertex(375,387);
  roof1.vertex(425,387);
  roof1.endShape();
  PShape roof2 = createShape();
  roof2.beginShape();
  roof2.vertex(375,422);
  roof2.vertex(425,422);
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
     group.translate(-10,0);
     
  }
    
}
 if (keyPressed)
 {
 if (keyCode == RIGHT)
  {
    
  group.translate(10,0);
  }
  if (x == 207&& y==275)
  {
    group.translate(10,0);
  }
  
  
  
 }
 
  shape(group);


}
}