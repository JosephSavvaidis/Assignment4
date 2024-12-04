class StartScreen{
  PImage startGame;
  
StartScreen(){
  startGame = loadImage("Title.png");
}
void drawStartScreen(){
  image(startGame, width/2, height/2, 200, 200);
}
}
