class Hour {

  float r = 100;
  float theta = 0;
  float x;
  float y;
  String text;
  color barColor = color(0, 0, 255);
  int currentTime;
  int SCALAR = width / 12;
  int yShift = 0;

  Hour() {
    currentTime = hour();
  }

  void updateTime() {
    currentTime = hour();
    
    if(hour() >= 12){
      bgColor = 100;
    }
    
    currentTime = currentTime % 12;
    
    print(currentTime);
    
    theta = (float)(Math.PI / 6) * currentTime;
    
    x = r * cos(theta);
    y = r * sin(theta);
  }

  void showTime() {
    stroke(barColor);
    line(x, y, 0, 0);
  }
}
