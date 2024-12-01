Enemy enemy;
Player player;
Monster monst;
Score score;
Groundback bg;
SpeedLines speedL;
SpeedLines speedL2;
void setup() {
  size(1400, 800);
  player = new Player();
  monst = new Monster();
  enemy = new Enemy();
  score = new Score();
  bg = new Groundback();
  speedL = new SpeedLines();
  speedL2 = new SpeedLines();
}

void draw() {
  background(255);
  
  bg.drawBG();
  player.animate();
  player.move();
  //monst.animate();
  enemy.animate();
  enemy.getHit();
  score.showScore();
  if(score.points > 20){
    speedL.drawSpeedLines();
  speedL2.drawSpeedLines();
  }
  
  //check if get hit by enemy
  println(frameRate);
  
  
}
//keyboard inputs
//checking when key is pressed
void keyPressed(){
  if(key == 'a' || key == 'A'){
  player.moveLeft = true;
  //print("griddy");
  }
  if(key == 'd' || key == 'D'){
  player.moveRight = true;
  }
  if(key == ' '){
    if(player.isGrounded == true){//just trying to add extra chekcs for when framenUmber should be twleve, i just want it to be sure to play the animation
    player.frameNumber = 12;
    }
    player.jump = true;
    
  }
  }
  //checking when key is released
  void keyReleased(){
  if(key == 'a' || key == 'A'){
  player.moveLeft = false;   
  }
  if(key == 'd' || key == 'D'){
  player.moveRight = false;
  }
  if(key == ' '){
    player.jump = false;
    
    
  }
  }
