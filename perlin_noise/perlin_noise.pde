float x, y, t;

void setup(){
  size(600, 400);
  background(255);
  
  y = height / 2;
  t = 0;
}

void draw(){
  
  y = map(noise(t), 0, 1, 0, height);
  x = t / .01;
  
  fill(0);
  point(x, y);
  
  t += .01;
}
