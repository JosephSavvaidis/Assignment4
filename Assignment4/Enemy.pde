class Enemy{
  PImage enemy[] = new PImage[5];
  int frameNumber = 1;
  int lastFrameTime = 0;
  int frameRate = 12;
  int hitBox = 100;
  PVector enemylocation;
  PVector enemyvelocity;
  Enemy(){
  
  enemylocation = new PVector(600, 700);
  enemyvelocity = new PVector(-5, 0);
  
  for(int i = 1; i < 5; i++){
    enemy[i] = loadImage("Enemy-" + i + ".png");
  }
  }
  void animate(){
    imageMode(CENTER);
  
  image(enemy[frameNumber], enemylocation.x, enemylocation.y, 250, 250);
  if (millis() - lastFrameTime > 1000 / frameRate) {
    frameNumber++; // Move to the next frame
    
    if (frameNumber > 4) { // Loop back to the first frame
      frameNumber = 1;
    }
    lastFrameTime = millis(); // Update the last frame time
}
  }
  void getHit(){
    
    if(player.location.x >= enemylocation.x -hitBox + 25){
   if(player.location.x <= enemylocation.x + hitBox + 15){
     if(player.location.y >= enemylocation.y -hitBox + 13){
       if(player.location.y <= enemylocation.y + hitBox){
         //print("YOU DEAD! ");
         //death = true;
         //gameEnd = true;
         print("You died");
         /*if(player.location.y > 540){
         player.location.y = 540;
         }*/
       }
     }
   }
  }
  }
}
