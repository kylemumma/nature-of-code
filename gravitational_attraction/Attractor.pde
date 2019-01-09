class Attractor {
  PVector location;
  
  float mass;
  float radius;
  float G;
  
  boolean dragging = false;
  
  Attractor() {
    location = new PVector(width/2, height/2);
    
    this.G = 0.75;
    this.radius = 40;
    this.mass = radius*3;
  }
  
  Attractor(float x, float y, float radius) {
    location = new PVector(x, y);
    
    this.G = 1;
    this.radius = radius;
    this.mass = radius * 3;
  }
  
  Attractor(float radius) {
    location = new PVector(width/2, height/2);
    
    this.G = 1;
    this.radius = radius;
    this.mass = radius * 3;
  }
  
  PVector attract(Mover mover){
    if(dragging){
      location.x = mouseX;
      location.y = mouseY;
    }
    
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
  
  void clicked(int mx, int my){
    float distance = dist(mx, my, location.x, location.y);
    if(distance < radius){
      dragging = true;
    }
  }
  
  void stopDragging(){
    dragging = false;
  }
  
  void show(){
    stroke(0);
    if(dragging){
      fill(100);
    } else {
      fill(150);
    }
    ellipse(location.x, location.y, radius*2, radius*2);
  }
}
