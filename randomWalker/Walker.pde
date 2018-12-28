class Walker {
  float x;
  float y;

  Walker() {
    x = width/2;
    y = height/2;
  }

  void display() {
    fill(0);
    point(x, y);
  }
  
  void step(){
    float step = random(1);
    
    if(step < 0.3){ //30% chance to go right
      x += 1;
    } else if(step < 0.5) { //20% to go left
      x -= 1;
    } else if(step < 0.75){ //25% to go up
      y += 1;
    } else { // 25% to go down
      y -= 1;
    }
  }
}
