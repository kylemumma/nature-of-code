Mover[] balls;

void setup() {
  size(600, 600);
  
   balls = new Mover[1];
   for(int i = 0; i < balls.length; i++){
     float ballX = random(RADIUS+ 10 , width-RADIUS-50);
     float ballRadius = random(5, 30);
     float ballY = random(RADIUS, height-RADIUS-50);
     balls[i] = new Mover(ballX, ballY, ballRadius);
   }
}

void draw() {
  background(255);
  
  PVector Fwind = new PVector(.2, 0);
  
  for(Mover ball : balls){
    //gravity
    PVector Fgravity = new PVector(0, ball.mass);
    ball.applyForce(Fgravity);
    
    //wind
    ball.applyForce(Fwind);
    
    
    //friction
    PVector friction = ball.velocity.copy();
    friction.normalize();
    friction.mult(-1);
    
    float mewK = 0.05;
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
 
 
