class Fish extends Animal {
  Fish(){
    super();
    acceleration = PVector.random2D();
  }
  
  Fish(float x, float y){
    super(x, y);
    acceleration = PVector.random2D();
  }
  
  void move() {
    float prob = random(1);
    if(prob < .6){
      acceleration.rotate(PI/50);
    } else {
      acceleration.rotate(-PI/50);
    }
    
    acceleration.normalize();
    
    velocity.limit(2);
    velocity.add(acceleration);
    position.add(velocity);
  }
  
  public void show() {
    noStroke();
    fill(#3498db);
    
    ellipse(position.x, position.y, 30, 30);
  }
}
