final int SCALAR = 10;
final int BAR_HEIGHT = 50;
int bgColor = 255;
int textColor = 50;
Hour hour;
Minute minute;
Second second;

void setup(){
  size(800, 800);
  textSize(32);
  
  hour = new Hour();
  minute = new Minute();
  second = new Second();
  
  hour.updateTime();
  minute.updateTime();
  second.updateTime();
}

void draw(){  
  background(bgColor);
  
  translate(width/2, height/2);
  
  for(int i = 0; i < 12; i++){
    float x = 250 * cos((float)((Math.PI / 6) * i));
    float y = 250 * sin((float)((Math.PI / 6) * i));
    
    int textString = (i+3) % 12;
    if(textString == 0)
      textString = 12;
    
    text(textString, x - 16, y + 16);
  }
  
  rotate(radians(-90));
 
  second.updateTime();
  
  hour.showTime();
  minute.showTime();
  second.showTime();
}
