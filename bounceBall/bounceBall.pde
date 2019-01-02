Ball b;

void setup(){
  size(600, 600);
  
  b = new Ball();
}

void draw(){
  background(255);
  
  b.move();
  b.bounce();
  b.show();
}
