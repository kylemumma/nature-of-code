Animal[] animals;

void setup() {
  size(1000, 800);
  
  animals = new Animal[20];
  
  for(int i = 0; i < 10; i++){
    animals[i] = new Fish(random(width), random(height));
  }
  
  for(int i = 10; i < 20; i++){
    animals[i] = new Fly(random(width), random(height));
  }
}

void draw() {
  background(#2980b9);
  
  for(Animal a : animals){
    a.move();
    a.checkEdges();
    a.show();
  }
}
