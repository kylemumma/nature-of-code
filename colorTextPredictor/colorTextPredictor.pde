Button blackButton;
Button whiteButton;
Button exitButton;

color currentColor = color(0, 255, 0);

boolean blackClicked = false;
boolean whiteClicked = false;
boolean exitClicked = false;

PrintWriter output;

void setup(){
  size(800, 600);
  
  blackButton = new Button(false, currentColor, "black", 10, 150, 350, 300);
  whiteButton = new Button(true, currentColor, "white", 400, 150, 350, 300);
  exitButton = new Button(true, color(100), "Save & Exit", 10, 10, 230, 50);
    
  output = createWriter("output.txt");
}

void draw(){
  blackButton.show();
  whiteButton.show();
  exitButton.showExit();
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
  } else if((mouseX > exitButton.position.x && mouseX < exitButton.position.x + exitButton.xwidth) &&
  (mouseY > exitButton.position.y && mouseY < exitButton.position.y + exitButton.yheight)){
    exitButton.setBGColor(color(200, 0, 0));
    exitClicked = true;
  }
}

void mouseReleased(){
  blackButton.setBGColor(currentColor);
  whiteButton.setBGColor(currentColor);
  
  if(blackClicked){
    output.println("{" + red(currentColor)/255 + ", " + green(currentColor)/255 + ", " + blue(currentColor)/255 + "}, {0},");
    currentColor = color((int)random(256), (int)random(256), (int)random(256));
    blackButton.setBGColor(currentColor);
    whiteButton.setBGColor(currentColor);
    blackClicked = false;
  } else if(whiteClicked){
    output.println("{" + red(currentColor)/255 + ", " + green(currentColor)/255 + ", " + blue(currentColor)/255 + "}, {1},");
    currentColor = color((int)random(256), (int)random(256), (int)random(256));
    blackButton.setBGColor(currentColor);
    whiteButton.setBGColor(currentColor);
    whiteClicked = false;
  } else if(exitClicked){
    exitButton.setBGColor(color(100));
    exitClicked = false;
    output.flush();
    output.close();
    exit();
  }
}
