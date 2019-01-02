void setup(){
  size(600, 600);
}

void draw(){
  background(255);
  
  PVector mouse = new PVector(mouseX, mouseY);
  PVector center = new PVector(width/2, height/2);
  
  point(center.x, center.y);
  point(mouse.x, mouse.y);
  
  mouse.sub(center);
  mouse.normalize();
  mouse.mult(100);
  
  translate(width/2, height/2);
  line(0, 0, mouse.x, mouse.y);
}
