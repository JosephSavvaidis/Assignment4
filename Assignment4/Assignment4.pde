Enemy enemy;
Player player;
Monster monst;
void setup() {
  size(1200, 800);
  player = new Player();
  monst = new Monster();
  enemy = new Enemy();
}

void draw() {
  background(255);
  player.animate();
  player.move();
  //monst.animate();
  enemy.animate();
  enemy.getHit();
  //check if get hit by enemy
  //println(frameRate);
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
