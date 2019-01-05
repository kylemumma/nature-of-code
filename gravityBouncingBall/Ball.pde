class Ball{
 PVector position;
 PVector velocity;
 PVector acceleration;
 PVector force;
 
 float mass; //in kg
 float Fgravity;
 float Fnormal;
 
 final int RADIUS = 10;
 
 Ball(float mass){
   position = new PVector(width/2, RADIUS);
   velocity = new PVector(0, 0);
   acceleration = new PVector(0, 0);
   force = new PVector(0, 0);
   
   this.mass = mass;
   Fgravity = 9.8 * mass;
   Fnormal = 0;
   
   frameRate(60);
 }
 
 void move(){
  force.y = Fgravity/60 - Fnormal;
  
  acceleration.y = force.y / mass; // Fnet/m = a
  
  velocity.add(acceleration);
  position.add(velocity);
 }
 
 void checkEdges(){
   if(position.y >= height-RADIUS){ //bottom
     
     Fnormal = Fgravity/60 + (mass * velocity.y);
     Fnormal -= mass*velocity.y / 5; //friction
     
     if(Fnormal < 8.2){
       Fnormal -= mass*velocity.y;
     }
     
     velocity.y = 0;
     position.y = height-RADIUS;
   } else {
     Fnormal = 0;
   }
 }
 
 void show(){
   fill(0);
   ellipse(position.x, position.y, RADIUS*2, RADIUS*2);
 }
}
