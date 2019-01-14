Button blackButton;
Button whiteButton;

color currentColor = color(0, 255, 0);

boolean blackClicked = false;
boolean whiteClicked = false;

void setup(){
  size(800, 600);
  
  blackButton = new Button(false, currentColor, "black", 10, 150, 350, 300);
  whiteButton = new Button(true, currentColor, "white", 400, 150, 350, 300);
}

void draw(){
  blackButton.show();
  whiteButton.show();
}

void mousePressed(){
  if((mouseX > blackButton.position.x && mouseX < blackButton.position.x + blackButton.xwidth) &&
  (mouseY > blackButton.position.y && mouseY < blackButton.position.y + blackButton.yheight)){
    //black button clicked
    blackButton.setBGColor(color(100));
    blackClicked = true;
  } else if((mouseX > whiteButton.position.x && mouseX < whiteButton.position.x + whiteButton.xwidth) &&
  (mouseY > whiteButton.position.y && mouseY < whiteButton.position.y + whiteButton.yheight)) {
    //white button clicked
    whiteButton.setBGColor(color(100));
    whiteClicked = true;
  }
}

void mouseReleased(){
  blackButton.setBGColor(currentColor);
  whiteButton.setBGColor(currentColor);
  
  if(blackClicked){
    currentColor = color((int)random(256), (int)random(256), (int)random(256));
    blackButton.setBGColor(currentColor);
    whiteButton.setBGColor(currentColor);
    blackClicked = false;
  } else if(whiteClicked){
    currentColor = color((int)random(256), (int)random(256), (int)random(256));
    blackButton.setBGColor(currentColor);
    whiteButton.setBGColor(currentColor);
    whiteClicked = false;
  }
}
