class Minute extends Hour {
  
  float r = 150;
  
  Minute() {
    currentTime = minute();
    
    barColor = color(0, 255, 0);
    
    theta = (float)(Math.PI / 30) * currentTime;
    
    x = r * cos(theta);
    y = r * sin(theta);
    
    println("minute: " + currentTime);
  }

  void updateTime() {
    currentTime = minute();
    
    if(currentTime == 0){
      hour.updateTime();
    }
  }
}
