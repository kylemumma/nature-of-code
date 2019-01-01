class Second extends Minute {
  
  float r = 200;
  
  Second() {
    currentTime = second();
    
    barColor = color(255, 0, 0);
  }

  void updateTime() {
    currentTime = second();
    
    theta = (float)(Math.PI / 30) * currentTime;
    
    x = r * cos(theta);
    y = r * sin(theta);
    
    println("second: " + currentTime);
    
    if(currentTime == 0){
      minute.updateTime();
    }
  }
}
