class Mover {
  PVector location;
  PVector velocity;
  PVector acceleration;
  
  float mass;
  float radius;
  
  Mover() {
    location = new PVector(width/2, height/2);
    velocity = new PVector(5, 0);
    acceleration = new PVector(0, 0);
    
    this.mass = 1;
    this.radius = 10;
  }
  
  Mover(float x, float y, float radius, boolean startsRight) {
    location = new PVector(x, y);
    velocity = new PVector(5, 0);
    acceleration = new PVector(0, 0);
    
    this.radius = radius;
    this.mass = radius * 2;
    
    if(!startsRight){
      velocity.x *= -1;
    }
  }
  
  Mover(float mass) {
    location = new PVector(width/2, height/2);
    velocity = new PVector(5, 0);
    acceleration = new PVector(0, 0);
    
    this.radius = 10;
    this.mass = radius * 2;
  }
  
  void checkEdges(){
    if(location.x > width - radius){
      location.x = width - radius;
      velocity.x *= -1;
    } else if(location.x < radius){
      location.x = radius;
      velocity.x *= -1;
    }
    
    if(location.y > height - radius){
      location.y = height - radius;
      velocity.y *= -1;
      
      //friction
      /*
      PVector gravityForce = new PVector(0, mass);
      
      PVector friction = velocity.copy();
      friction.normalize();
      friction.mult(-1);
      
      float mewK = 0.05;
      float Fnormal = gravityForce.mag();
      
      friction.mult(Fnormal);
      friction.mult(mewK);
      
      applyForce(friction);
      */
    } else if(location.y < radius) {
      location.y = radius;
      velocity.y *= -1;
    }
  }
  
  void applyForce(PVector f){
    //static version of divide so it doesnt mess up force object
    PVector appliedForce = PVector.div(f, mass);
    acceleration.add(appliedForce);
  }
  
  void update(){
    velocity.add(acceleration);
    location.add(velocity);
    
    acceleration.mult(0);
  }
  
  void show(){
    stroke(0);
    fill(150);
    ellipse(location.x, location.y, radius*2, radius*2);
  }
}
