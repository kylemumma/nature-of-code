int numOfWalkers = 50;
int iterationsPerFrame = 5;
float walkerDiameter;

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
  walkerDiameter = walkers.get(0).diameter;
}

void draw() {
  background(255);
  
  //update walkers and process collisions
  for(int i = 0; i < iterationsPerFrame; i++){
    for(Walker w : walkers){
      w.walk();
    
      for(int j = aggregate.size() - 1; j >= 0; j--){
        double dx = w.pos.x - aggregate.get(j).pos.x;
        double dy = w.pos.y - aggregate.get(j).pos.y;
        double dist = Math.hypot(dx, dy);
        
        if(dist <= walkerDiameter){
          aggregate.add(new Walker(w.pos.x, w.pos.y));
          w.resetPos();
        }
      }
    }
  }
  
  //show walkers
  fill(0);
  for(Walker w : walkers){
    w.show();
  }
  
  
  //show aggregate
  fill(255, 0, 0);
  for(Walker a : aggregate){
    a.show();
  }
}
