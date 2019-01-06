Mover[] balls;
PVector Fapplied;

void setup() {
  size(1000, 600);
  
   balls = new Mover[1];
   for(int i = 0; i < balls.length; i++){
     float ballRadius = random(5, 30);
     balls[i] = new Mover(ballRadius, height-ballRadius, ballRadius);
   }
   
   Fapplied = new PVector(4, 0);
}

void draw() {
  background(255);
  //grass
  fill(0, 255, 0);
  rect(0, height-10, width, 10);
  
  //ice
  fill(0, 0, 255);
  rect(400, height-10, 150, 10);
  
  //sandpaper
  fill(100, 0, 100);
  rect(800, height-10, 100, 10);
  
  for(Mover ball : balls){
    //gravity
    PVector Fgravity = new PVector(0, ball.mass);
    ball.applyForce(Fgravity);
    
    //wind
    ball.applyForce(Fapplied);
    
    
    //friction
    PVector friction = ball.velocity.copy();
    friction.normalize();
    friction.mult(-1);
    
    float mewK = 0.1;
    if(ball.location.x >= 400 && ball.location.x <= 550){
      mewK = 0;
    } else if(ball.location.x >= 800 && ball.location.x <= 900){
      mewK = 0.5;
    }
    
    float Fnormal = Fgravity.mag();
    
    friction.mult(Fnormal);
    friction.mult(mewK);
    
    ball.applyForce(friction);
    
    //general functions
    ball.update();
    ball.checkEdges();
    ball.show();
  }
}
 
void keyPressed(){
  if(keyCode == RIGHT){
    Fapplied.x = 10;
  }
  
  if(keyCode == LEFT){
    Fapplied.x = -10;
  }
}

void keyReleased(){
  Fapplied.x = .5;
}
 
