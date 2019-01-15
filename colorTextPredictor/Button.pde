class Button {
  color textColor;
  color backgroundColor;
  
  String word;
  
  PVector position;
  float xwidth, yheight;
  
  Button(boolean isWhiteText, color backgroundColor, String word, float xpos, float ypos, float w, float h){
    this.textColor = color(0);
    if(isWhiteText){
      this.textColor = color(255);
    }
    
    this.backgroundColor = backgroundColor;
    this.word = word;
    
    position = new PVector(xpos, ypos);
    
    xwidth = w;
    yheight = h;
  }
  
  void setBGColor(color c){
    backgroundColor = c;
  }
  
  void show(){
    fill(backgroundColor);
    rect(position.x, position.y, xwidth, yheight);
    
    textSize(32);
    fill(textColor);
    text(word, position.x - (40) + (xwidth/2), position.y + (yheight/2));
  }
  
  void showExit() {
    fill(backgroundColor);
    rect(position.x, position.y, xwidth, yheight);
    
    textSize(32);
    fill(textColor);
    text(word, position.x - (90) + (xwidth/2), position.y + 10 + (yheight/2));
  }
}
