Enemy enemy;
Enemy2 enemyFly;
Player player;
Monster monst;
Score score;
Groundback bg;
SpeedLines speedL;
SpeedLines speedL2;
StartScreen startMenu;
boolean play = false;
void setup() {
  size(1600, 800);
  enemyFly = new Enemy2();
  player = new Player();
  monst = new Monster();
  enemy = new Enemy();
  score = new Score();
  bg = new Groundback();
  speedL = new SpeedLines();
  speedL2 = new SpeedLines();
  startMenu = new StartScreen();
}

void draw() {
  background(255);
  if(play == false){
  startMenu.drawStartScreen();
  reset();
  }else if(play == true){
  bg.drawBG();
  player.animate();
  player.move();
  //monst.animate();
  enemyFly.animate();
  enemyFly.getHit();
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
  if(play == false){
  if(key == 'm' || key == 'M'){
  play = true;
}
  }
  }
  void reset(){
  enemy.enemylocation.x = 2000;
  enemy.enemyvelocity.x = -5;
  enemyFly.enemylocation.x = 3000;
  enemyFly.enemylocation.y = 300;
  enemyFly.enemyvelocity.x = -5;
  player.location.x = 200;
  player.location.y = 600;
  score.points = 0;
  speedL.velocity.x = -3;
  speedL2.velocity.x = -3;
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
