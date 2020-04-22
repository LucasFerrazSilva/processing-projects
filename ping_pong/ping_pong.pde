int marginSize;
int borderSize;

int playerMargin;
int playerWidth;
int playerHeight;
int playerSpeed;

int player1X;
int player1Y;
int player1Score;

int player2X;
int player2Y;
int player2Score;

int ballX;
int ballY;

int ballXDisplacement;
int ballYDisplacement;

boolean gameOver;


void setup() {
  size(800, 500);
  background(50);

  marginSize = 10;
  borderSize = 1;
  playerMargin = 5;
  playerWidth = 20;
  playerHeight = 80;
  playerSpeed = 50;
  player2Score = 0;
  player1Score = 0;

  initializeVariables();
}

void draw() {
  background(50);
  
  if(gameOver) {    
    initializeVariables();
  }
  
  drawField();  
  drawPlayer1();  
  drawPlayer2();  
  drawBall();
}

void initializeVariables() {
  gameOver = false;
  
  ballX = width/2;
  ballY = height/2;

  ballXDisplacement = (random(-10, 10) >= 0 ? 5 : -5);
  ballYDisplacement = int(random(-5, 5));

  player1X = marginSize + borderSize + playerMargin;
  player1Y = (height/2) - (playerHeight/2);

  player2X = width - marginSize - borderSize - playerMargin - playerWidth;
  player2Y = (height/2) - (playerHeight/2);
  
  println("-- Score --");
  println("Player 1: " + player1Score);
  println("Player 2: " + player2Score);
}


void keyPressed() {  
  switch(key) {
  case 'w': 
    if (playerCanGoUp(player1Y)) {
      player1Y -= playerSpeed;
    }
    break;
  case 's':
    if (playerCanGoDown(player1Y)) {
      player1Y += playerSpeed;
    }
    break;
  case '8': 
    if (playerCanGoUp(player2Y)) {
      player2Y -= playerSpeed;
    }
    break;
  case '5':
    if (playerCanGoDown(player2Y)) {
      player2Y += playerSpeed;
    }
    break;
  default: 
    break;
  }
}


boolean playerCanGoDown(int playerY) {
  return playerY + playerHeight < height - marginSize - borderSize;
}

boolean playerCanGoUp(int playerY) {
  return playerY > marginSize + borderSize;
}
