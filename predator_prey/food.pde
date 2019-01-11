class Food {
  PVector position;
  
  float radius = 10;
  float mass = 5;
  float tx, ty;
  
  color fill = color(186, 85, 211);
  
  Food(){
    position = new PVector(random(radius, width), random(radius, height));
    
    tx = 0;
    ty = 10000;
  }
  
  void checkColliding(Prey object){
    PVector dist = PVector.sub(position, object.position);
    if(dist.mag() < radius + object.radius){
      setRandomPosition();
      prey.radius+=1;
    }
  }
  
  void setRandomPosition() {
    tx = random(50000, 100000);
    ty = random(-100000, -50000);
    fill = color((int)random(256), (int)random(256), (int)random(256));
  }
  
  void update() {
    position.x = map(noise(tx), 0, 1, 0, width);
    position.y = map(noise(ty), 0, 1, 0, height);
    tx += 0.02;
    ty += 0.02;
  }
  
  void show(){
    fill(fill);
    ellipse(position.x, position.y, radius*2, radius*2);
  }
}
