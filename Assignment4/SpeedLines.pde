class SpeedLines{
  PVector location;
  PVector velocity;
  PVector acceleration;
  float speedLength = 75;
SpeedLines(){
  location = new PVector(1500, random(0, 800));
  velocity = new PVector(-3, 0);
  acceleration = new PVector(-0.02, 0);
}
void drawSpeedLines(){
  velocity.add(acceleration);
  location.add(velocity);
  strokeWeight(4);
  stroke(255);
 line(location.x, location.y, location.x + speedLength, location.y);
 if(location.x < -300){
   location.x = random(1500, 2000);;
   location.y = random(100, 900);
   speedLength = random(50, 300);
 }
}
}
