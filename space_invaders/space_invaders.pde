boolean gameOver;
int score;

void setup() {
  size(500,800);
  
  init();
}

void draw() {
  if(gameOver)
    init();
  
  drawBackground();
  
  drawMeteors();
  
  drawSpaceship();
  
  printScore();
}

void init() {
  gameOver = false;
  score = 0;
  
  initializeBackgroundVariables();
  initializeSpaceshipVariables();
  initializeMeteorVariables();
}

void gameOver() {
  gameOver = true;
}

void increaseScore() {
  score++;
}

void printScore() {  
  textSize(32);
  fill(255);
  stroke(2);
  text("Score: " + score, 10, 30);
}
