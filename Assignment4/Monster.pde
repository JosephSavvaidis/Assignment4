class Monster{
  PImage monster[] = new PImage[6];
  int frameNumber = 1;
  int frameRate = 15;   // Frames per second for animation
  int lastFrameTime = 0;  // Tracks the last time a frame was updated
  
Monster(){
for(int i = 1; i < 6; i++){
    monster[i] = loadImage("Monster-" + i + ".png");
    frameNumber = i;
  }

}
void animate(){
  imageMode(CENTER);
  
  image(monster[frameNumber], 200, 400, 600, 600);
  if (millis() - lastFrameTime > 1000 / frameRate) {
    frameNumber++; // Move to the next frame
    
    if (frameNumber > 5) { // Loop back to the first frame
      frameNumber = 1;
    }
    lastFrameTime = millis(); // Update the last frame time
}
}
}
