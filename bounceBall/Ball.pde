class Ball{
 PVector position;
 PVector velocity;
 PVector acceleration;
 
 Ball(){
   position = new PVector(width/2, height/2);
   velocity = new PVector(0, 0);
   acceleration = new PVector(0, 0);
 }
 
 void move(){
   //distance from ball to mouse
   PVector distanceFromBallToMouse = new PVector(mouseX, mouseY);
   distanceFromBallToMouse.sub(position);
   
   //setting acceleration towards mouse
   PVector mouse = new PVector(mouseX, mouseY);
   mouse.sub(position);
   mouse.setMag(0.05);
   acceleration = mouse;
   
   //acceleration is greater to closer the ball is to the mouse
   acceleration.mult((float)Math.pow(0.995, distanceFromBallToMouse.mag() - 500) + 0.6);
   
   velocity.add(acceleration);
   position.add(velocity);

 }
 
 void bounce(){
   if(position.x > width || position.x < 0){
     velocity.x *= -1;
   }
   if(position.y > height || position.y < 0){
     velocity.y *= -1;
   }
 }
 
 void show(){
   fill(0);
   ellipse(position.x, position.y, 20, 20);
 }
}
