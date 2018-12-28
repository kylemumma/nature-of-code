int[] points;

void setup(){
  size(400, 400);
  background(255);
  points = new int[400];
  
  for(int i = 0; i < 50000; i++){
     points[pickRand()]++;
   }
   
   stroke(0);
   for(int i = 0; i < points.length; i++){
     line(i, 400, i, 400 - points[i]);
   }
}

void draw(){ 
}

//returns random number between 0 and 400, favors more toward high numbers in
//a linear relationship
int pickRand(){
  while(true){
    float r1 = random(1);
    float r2 = random(1);
    float y = r1*r1;
    
    if(r2 < y){
      return (int)(r1 * 400);
    }
  }
}
