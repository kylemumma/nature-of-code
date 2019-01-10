Food food;
Prey prey;

void setup(){
  size(800, 800);
  
  food = new Food();
  prey = new Prey();
}

void draw(){
  background(255);
  
  //apply force in direction of food
  PVector forceTowardsFood = PVector.sub(food.position, prey.position);
  forceTowardsFood.normalize();
  prey.applyForce(forceTowardsFood);
  
  //check if colliding with food
  food.checkColliding(prey);
  
  //move
  prey.update();
  
  //show
  prey.show();
  food.show();
}
