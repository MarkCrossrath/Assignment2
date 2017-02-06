class AICar  
{
  
  float x = 150;
  float y = 100; 
  float speed= 2;
 
 PShape AICar;


void CarDraw () {
  // Make a group PShape
  AICar = createShape();
  
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
  AICar.addChild(body);
  AICar.addChild(window1);
  AICar.addChild(window2);
  AICar.addChild(bonnet);
  AICar.addChild(boot);
  AICar.addChild(roof1);
  AICar.addChild(roof2);
 
}

 
  
  void move()
  {
      float x = 150;
  float y = 100; 
  float speed= 2;
    y= y+speed;
    
    shape(AICar);
    
  }
  
}