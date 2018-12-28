import java.util.Random;

Random gen;
int i;

void setup(){
  background(255);
  size(400, 400);
  gen = new Random();
  i=0;
}

void draw(){
  i++;
  
  double h = gen.nextGaussian(); //mean of 0, standard deviation of 1
  h = h * 40; //standard deviation of 40 (stretch by 40)
  h = h + 200; //mean of 200 (shift right 200)
  
  noStroke();
  color c = color(0, 0, 0, 10);
  fill(c);
  ellipse((float)h, 200, 10, 10);
}
