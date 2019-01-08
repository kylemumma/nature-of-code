Mover[] movers;
Attractor attractor;

void setup() {
  size(600, 600);
  
  movers = new Mover[4];
  
  for(int i = 0; i < movers.length; i++){
    movers[i] = new Mover(width/2, random(20, 200), random(4, 10), random(1) > 0.5);
  }
  
  attractor = new Attractor(30);
}

void draw() {
  background(255);
  
  for(Mover mover : movers){
    PVector attractionForce = attractor.attract(mover);
    mover.applyForce(attractionForce);
  
    //general functions
    mover.update();
    mover.show();
  }
  
  attractor.show();
}
