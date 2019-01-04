class Fly extends Animal {
  Fly(){
    super();
  }
  
  Fly(float x, float y){
    super(x, y);
  }
  
  void move() {
    acceleration = PVector.random2D();
    
    float prob = random(1);
    if(prob < 0.01){
      velocity.mult(-1);
    }
    
    velocity.limit(20);
    velocity.add(acceleration);
    position.add(velocity);
  }
  
  public void show() {
    noStroke();
    fill(#2ecc71);
    
    rect(position.x, position.y, 10, 10);
  }
}
