class Score{
  int points = 0;
Score(){
  textSize(80); // Set the size of the text

}
void showScore(){
  fill(0);
  text("Score: " + points, 850, 100);
}
}
