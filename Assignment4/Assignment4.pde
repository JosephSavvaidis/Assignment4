
Player player;
void setup() {
  size(1000, 700);
  player = new Player();
}

void draw() {
  background(255);
  player.animate();
  player.move();
}
//keyboard inputs
//checking when key is pressed
void keyPressed(){
  if(key == 'a' || key == 'A'){
  player.moveLeft = true;
  print("griddy");
  }
  if(key == 'd' || key == 'D'){
  player.moveRight = true;
  }
  if(key == ' '){
    player.jump = true;
    print("hello");
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
    print("griddy");
    
  }
  }
