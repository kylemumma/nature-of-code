Mover[] movers;
Attractor attractor;

void setup() {
  size(1000, 800);
  
  movers = new Mover[3];
  
  for(int i = 0; i < movers.length; i++){
    movers[i] = new Mover(width/2, random(100, 200), random(4, 10), random(1) > 0.5);
  }
  
  attractor = new Attractor(30);
}

void draw() {
  background(255);
  
  for(int i = 0; i < movers.length; i++){
    PVector attractionForce = attractor.attract(movers[i]);
    movers[i].applyForce(attractionForce);
    for(int j = 0; j < movers.length; j++) {
      if(i == j){
        continue;
      }
      
      attractionForce.mult(0);
      attractionForce = movers[j].attract(movers[i]);
      movers[i].applyForce(attractionForce);
  
      //general functions
      movers[i].update();
      movers[i].show();
    }
  }
  
  attractor.show();
}

void mousePressed(){
  attractor.clicked(mouseX, mouseY);
}

void mouseReleased(){
  attractor.stopDragging();
}
