class StartScreen{
  PImage startGame;
  PFont shine;
  int fSize = 80;
StartScreen(){
  startGame = loadImage("Title.png");
  textSize(80);
}
void drawStartScreen(){
  rectMode(CENTER);
  stroke(0);
  strokeWeight(0);
  fill(255, 229, 236);
  rect(width/2, 200, 2000, 500);
  fill(255, 194, 209);
  rect(width/2, 430, 2000, 500);
  fill(255, 179, 198);
  rect(width/2, 575, 2000, 500);
  fill(255, 143, 171);
  rect(width/2, 700, 2000, 500);
  
  
  fill(251, 111, 146);
  rect(width/2, 790, 2000, 500);
  fill(255, 77, 109);
  rect(width/2, 850, 2000, 500);
  strokeWeight(4);
  fill(182, 228, 76);
  rect(width/2, 885, 2000, 500);
  strokeWeight(0);
  fill(111, 212, 22);
  rect(width/2, 930, 2000, 500);
  imageMode(CENTER);
  image(startGame, width/2, height/2 -50, 500, 500);
  
  fill(0);
  shine = createFont("Super Shiny.ttf", fSize);
  textFont(shine);
  
  text("Press 'M' to start! ", 500, 750);
}

}
