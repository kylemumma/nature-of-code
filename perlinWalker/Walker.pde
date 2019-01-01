class Walker {
  float x, y, lastX, lastY, tx, ty;

  Walker() {
    tx = 0;
    ty = 10000;
    
    x = map(noise(tx), 0, 1, 0, width);
    y = map(noise(ty), 0, 1, 0, height);
    lastX = map(noise(tx), 0, 1, 0, width);
    lastY = map(noise(ty), 0, 1, 0, height);
  }

  void display() {
    stroke(0);
    line(lastX, lastY, x, y);
  }
  
  void step(){
    float stepX = map(noise(tx), 0, 1, 0, width);
    float stepY = map(noise(ty), 0, 1, 0, height);
    
    lastX = x;
    lastY = y;
    
    x = stepX;
    y = stepY;
    
    tx += .005;
    ty += .005;
  }
}
