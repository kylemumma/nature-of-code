float angle = 0;
float angularVelocity = -0.01;
float angularAcceleration = 0;

void setup() {
  size(600, 600);
}

void draw() {
  background(255);
  
  angularVelocity += angularAcceleration;
  angle += angularVelocity;
  
  stroke(0);
  fill(100);
  
  translate(width/2, height/2);
  rotate(angle);
  triangle(-25, 20, -25, -20, 40, 0);
}
