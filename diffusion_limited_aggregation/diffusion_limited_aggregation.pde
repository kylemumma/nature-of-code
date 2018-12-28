int numOfWalkers = 75;
int iterationsPerFrame = 5;
double squareHypot;

ArrayList<Walker> walkers;
ArrayList<Walker> aggregate;


void setup() {
  
  size(600, 600);
  
  //setup walkers
  walkers = new ArrayList<Walker>();
  for(int i = 0; i < numOfWalkers; i++) {
    walkers.add(new Walker());
  }
  
  //setup aggregate
  aggregate = new ArrayList<Walker>();
  aggregate.add(new Walker(width/2, height/2));
  
  //establish squareHypot(diagonal size of square)
  squareHypot = Math.hypot(walkers.get(0).size, walkers.get(0).size);
}

void draw() {
  background(255);
  
  //update walkers
  for(int i = 0; i < iterationsPerFrame; i++){
    for(Walker w : walkers){
      w.walk();
    }
  }
  
  //process collisions and show
  fill(0);
  for(Walker w : walkers){
    for(int i = aggregate.size() - 1; i >= 0; i--){
      double dx = w.pos.x - aggregate.get(i).pos.x;
      double dy = w.pos.y - aggregate.get(i).pos.y;
      double dist = Math.hypot(dx, dy);
      
      if(dist < squareHypot){
        aggregate.add(new Walker(w.pos.x, w.pos.y));
        w.resetPos();
      }
    }
    
    w.show();
  }
  
  //show aggregate
  fill(255, 0, 0);
  for(Walker a : aggregate){
    a.show();
  }
}
