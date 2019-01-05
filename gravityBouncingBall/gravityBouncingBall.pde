Ball b;

void setup(){
  size(600, 600);
  
  b = new Ball(10);
}

void draw(){
  background(255);
  
  b.move();
  b.checkEdges();
  b.show();
}
