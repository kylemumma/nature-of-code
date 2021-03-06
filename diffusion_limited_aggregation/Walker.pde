class Walker {
  float diameter = 10;
  PVector pos;
  
  Walker(float x, float y) {
    pos = new PVector(x, y);
  }
  
  Walker() {
    resetPos();
  }
  
  void resetPos(){
    int x, y;
    
    double r = random(1);
    if(r < 0.25) { //top
      y = 0;
      x = (int)random(width);
    } else if(r < 0.5) { //bottom
      y = height;
      x = (int)random(width);
    } else if(r < 0.75) { //left
      x = 0;
      y = (int)random(height);
    } else { //right
      x = width;
      y = (int)random(height);
    }
    
    pos = new PVector(x, y);
  }
  
  void walk() {
    //move
    double r = random(1);
    double dist = random(diameter/2, diameter);
    if(r < 0.25) {
      pos.x += dist;
    } else if(r < 0.5) {
      pos.x -= dist;
    } else if(r < 0.75) {
      pos.y += dist;
    } else {
      pos.y -= dist;
    }
    
    //out of bounds
    if(pos.x < 0) {
      pos.x = width;
    } else if(pos.x > width) {
      pos.x = 0;
    }
    
    if(pos.y < 0) {
      pos.y = height;
    } else if(pos.y > height) {
      pos.y = 0;
    }
  }
  
  void show() {
    noStroke();
    
    ellipse(pos.x, pos.y, diameter, diameter);
  }
}
