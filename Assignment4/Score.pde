class Score{
  int points = 0;
  PFont shine;
Score(){
  textSize(80); // Set the size of the text
  
}
void showScore(){
  fill(0);
  shine = createFont("Super Shiny.ttf", 80);
  textFont(shine);
  text("Score: " + points, 850, 100);
}
}
