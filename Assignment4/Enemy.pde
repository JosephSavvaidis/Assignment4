class Enemy{
  PImage enemy[] = new PImage[5];
  int frameNumber = 1;
  int lastFrameTime = 0;
  int frameRate = 12;
  int hitBox = 100;
  PVector enemylocation;
  PVector enemyvelocity;
  PVector enemyacceleration;
  boolean fontBig;
  Enemy(){
  //here
  enemylocation = new PVector(900, 550);
  enemyvelocity = new PVector(-5, 0);
  enemyacceleration = new PVector(-0.002, 0);
  
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
    if(fontBig == true){
    score.fSize = 83;
    fontBig = false;
    }else if(fontBig == false){
    score.fSize = 80;
    }
    enemylocation.add(enemyvelocity);
    enemyvelocity.add(enemyacceleration);
    if(enemylocation.x <= - 150){
      score.points += 1;
      fontBig = true;
      enemylocation.x = random(1550, 2000);
      //enemyvelocity.x = enemyvelocity.x - 1;
    }
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
