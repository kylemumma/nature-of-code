class Ball{
 PVector position;
 PVector velocity;
 
 Ball(){
   position = new PVector(width/2, height/2);
   velocity = new PVector(2.5, -2);
 }
 
 void move(){
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
