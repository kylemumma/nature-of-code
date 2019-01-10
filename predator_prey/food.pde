class Food {
  PVector position;
  float radius = 10;
  
  Food(){
    position = new PVector(random(radius, width), random(radius, height));
  }
  
  void checkColliding(Prey object){
    PVector dist = PVector.sub(position, object.position);
    if(dist.mag() < radius + object.radius){
      setRandomPosition();
    }
  }
  
  void setRandomPosition() {
    position.x = random(radius, width);
    position.y = random(radius, height);
  }
  
  void show(){
    fill(186, 85, 211);
    ellipse(position.x, position.y, radius*2, radius*2);
  }
}
