class Player{
PImage[] player = new PImage[12];
int frameRate = 20;   // Frames per second for animation (adjust to control speed)
int frameNumber = 1;
int lastFrameTime = 0;  // Tracks the last time a frame was updated

PVector velocity;
PVector location;

Boolean moveRight = false;
Boolean moveLeft = false;
//jumpCheck
Boolean jump = false;
boolean isJumping = false;
float jumpPower = 20;
float jumpDecrease = 0;
boolean canJump = true;
//control how fast the player moves
int moveSpeed = 7;
Player(){
  //load PVectors
  location = new PVector(200, 600);
  velocity = new PVector(0, 0);
// Load images
  player[1] = loadImage("Run-1.png");
  player[2] = loadImage("Run-2.png");
  player[3] = loadImage("Run-3.png");
  player[4] = loadImage("Run-4.png");
  player[5] = loadImage("Run-5.png");
  player[6] = loadImage("Run-6.png");
  player[7] = loadImage("Run-7.png");
  player[8] = loadImage("Run-8.png");
  player[9] = loadImage("Run-9.png");
  player[10] = loadImage("Run-10.png");
  player[11] = loadImage("Run-11.png");
}
void animate(){
  imageMode(CENTER);

  // Check if enough time has passed to update the frame
  if (millis() - lastFrameTime > 1000 / frameRate) {
    frameNumber++; // Move to the next frame
    if (frameNumber > 11) { // Loop back to the first frame
      frameNumber = 1;
    }
    lastFrameTime = millis(); // Update the last frame time
    
  }

  
}
void move(){
  // Display the current frame
  image(player[frameNumber], location.x, location.y, 275, 275);
  location.add(velocity);
  if(moveLeft == true){
  velocity.x = -moveSpeed;
  
}
if(moveRight == true){
  velocity.x = moveSpeed;
}
//if player moving neither direction they stop moving
  if(moveRight == false && moveLeft == false){
    velocity.x = 0;
  }
  //if player imputing both directions they stop moving
  if(moveRight == true && moveLeft == true){
    velocity.x = 0;
  }
if(jump == true && location.y > 595  /*&& canJump == true*/){
  jumpPower = 15;
  isJumping = true;
}
if(isJumping == true /*&& playerY < 375*/){
  location.y -= jumpPower;
  if(jump == true){
    
  jumpPower -= 0.6;
  }else{
  jumpPower -= 1.6;//1.6
  }
  
}
if(location.y > 600){
  location.y = 600;
}
if(location.x < 0){
  location.x = 0;
}
if(location.x > 750){
location.x = 750;
}
}

}