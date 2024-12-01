class Score{
  int points = 0;
  PFont shine;
  int fSize = 80;
  
Score(){
  textSize(80); // Set the size of the text
  
}
void showScore(){
  fill(0);
  shine = createFont("Super Shiny.ttf", fSize);
  textFont(shine);
  
  text("Score: " + points, 850, 100);
  strokeWeight(3);
  
}
}
