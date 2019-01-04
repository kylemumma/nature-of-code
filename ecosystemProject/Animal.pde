class Animal {
  PVector position;
  PVector velocity;
  PVector acceleration;
  
  Animal() {
    position = new PVector(0, 0);
    velocity = new PVector(0, 0);
    acceleration = new PVector(0, 0);
  }
  
  Animal(float x, float y) {
    position = new PVector(x, y);
    velocity = new PVector(0, 0);
    acceleration = new PVector(0, 0);
  }
  
  void setVel(float x, float y) {
    velocity.x = x;
    velocity.y = y;
  }
  
  void setAcceleration(float x, float y) {
    acceleration.x = x;
    acceleration.y = y;
  }
  
  void checkEdges(){
    if(position.x > width){
      position.x = 0;
    } else if(position.x < 0){
      position.x = width;
    }
    
    if(position.y > height){
      position.y = 0;
    } else if(position.y < 0){
      position.y = height;
    }
  }
  
  void show(){
  }
  
  void move(){
  }
}
