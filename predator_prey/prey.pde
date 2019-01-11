class Prey {
  PVector position;
  PVector velocity;
  PVector acceleration;
  
  float radius = 20;
  float mass = 1;
  
  Prey(){
    position = new PVector(random(radius, width), random(radius, height));
    velocity = new PVector(0, 0);
    acceleration = new PVector(0, 0);
  }
  
  void applyForce(PVector force){
    acceleration = force.div(mass);
  }
  
  void update(){
    velocity.limit(5);
    
    velocity.add(acceleration);
    position.add(velocity);
    
    acceleration.mult(0);
  }
  
  void show(){
    fill(60,179,113);
    ellipse(position.x, position.y, radius*2, radius*2);
  }
}
