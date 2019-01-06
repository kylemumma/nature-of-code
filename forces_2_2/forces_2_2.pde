Mover[] balls;

void setup() {
  size(600, 600);
  
   balls = new Mover[8];
   for(int i = 0; i < balls.length; i++){
     float ballX = random(RADIUS+ 10 , width-RADIUS-50);
     float ballRadius = random(5, 30);
     float ballY = ballRadius;//random(RADIUS, height-RADIUS-50);
     balls[i] = new Mover(ballX, ballY, ballRadius);
   }
}

void draw() {
  background(255);
  
  //liquid
  fill(100);
  rect(0, height/2, width, height/2);
  
  PVector Fwind = new PVector(.2, 0);
  
  for(Mover ball : balls){
    //gravity
    PVector Fgravity = new PVector(0, ball.mass);
    ball.applyForce(Fgravity);
    
    //wind
    //ball.applyForce(Fwind);
    
    
    //friction
    PVector friction = ball.velocity.copy();
    friction.normalize();
    friction.mult(-1);
    
    float mewK = 0.05;
    float Fnormal = Fgravity.mag();
    
    friction.mult(Fnormal);
    friction.mult(mewK);
    
    
    
    //drag
    if(ball.location.y > height/2){
      float dragCoefficient = 0.8;
      float speed = ball.velocity.mag();
      
      PVector drag = ball.velocity.copy();
      drag.normalize();
      drag.mult(-1 * dragCoefficient * speed * speed);
      
      ball.applyForce(drag);
    } else {
      ball.applyForce(friction);
    }
  
    //general functions
    ball.update();
    ball.checkEdges();
    ball.show();
  }
}
 
 
