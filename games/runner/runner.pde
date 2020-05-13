boolean gameOver;

void setup() {
  size(700,500);
  
  reset();
}

void draw() {
  if(gameOver)
    reset();
  
  drawBackground();
  
  drawChar();
  
  drawRocks();
}

void keyPressed() {
  if(keyCode == 32) {
    jump();
  }
}

void gameOver(float rockY, float rockHeight) {
  println(charY);
  println(rockY);
  println(rockHeight);
  println(rockY - rockHeight);
  println();
  gameOver = true;
}

void reset() {
  gameOver = false;
  
  initBackgroundVariables();
  initCharVariables();
  initializeRocksVariables();
}
