class Attractor {
  PVector location;
  
  float mass;
  float radius;
  float G;
  
  Attractor() {
    location = new PVector(width/2, height/2);
    
    this.G = 1;
    this.radius = 40;
    this.mass = 80;
  }
  
  Attractor(float x, float y, float radius) {
    location = new PVector(x, y);
    
    this.G = 1;
    this.radius = radius;
    this.mass = radius * 2;
  }
  
  Attractor(float radius) {
    location = new PVector(width/2, height/2);
    
    this.G = 1;
    this.radius = radius;
    this.mass = radius * 2;
  }
  
  PVector attract(Mover mover){
    //direction of force
    PVector force = PVector.sub(location, mover.location);
    
    float distance = force.mag();
    distance = constrain(distance, 5, 25);
    
    force.normalize();
    
    //magnitude of force
    float strength = (G * mass * mover.mass) / (distance*distance);
    
    //putting magnitude and dir together
    force.mult(strength);
    
    return force;
  }
  
  void show(){
    stroke(0);
    fill(150);
    ellipse(location.x, location.y, radius*2, radius*2);
  }
}
