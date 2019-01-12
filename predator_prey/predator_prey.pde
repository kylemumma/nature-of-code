Food food;
Prey prey;

void setup(){
  size(800, 800);
  
  food = new Food();
  prey = new Prey(); 
}

void draw(){
  background(255);
  
  //check if colliding with food
  food.checkColliding(prey);
  
  //apply force in direction of food
  PVector forceTowardsFood = PVector.sub(food.position, prey.position);
  forceTowardsFood.normalize();
  prey.applyForce(forceTowardsFood);
  
  pushMatrix();
  translate(prey.position.x, prey.position.y);
  
  float rotateAngle = atan(prey.acceleration.y / prey.acceleration.x);
  if(food.position.x < prey.position.x){
    rotateAngle = PI + rotateAngle;
  }
  
  rotate(rotateAngle);
  fill(100);
  triangle(-25, 20, -25, -20, 40, 0);
  popMatrix();
  
  //move
  food.update();
  prey.update();
  
  //show
  food.show();
}
