int ballSize = 30;

void drawBall() {
  // Color
  fill(200);
  stroke(200);
  
  ballX += ballXDisplacement;
  ballY += ballYDisplacement;
  
  if(hitPlayer1() && ballXDisplacement < 0){
    ballXDisplacement *= -1;
    ballXDisplacement++;
  }
  
  if(hitPlayer2() && ballXDisplacement > 0){
    ballXDisplacement *= -1;
    ballXDisplacement--;
  }
  
  if(hitTopBorder() || hitBottomBorder()) {
    ballYDisplacement *= -1;
  }
  
  if(hitLeftBorder()) {
    player2Score++;
    gameOver = true;
  }
  
  if(hitRightBorder()) {
    player1Score++;
    gameOver = true;
  }
  
  ellipse(ballX, ballY, ballSize, ballSize);
}

boolean hitPlayer1() {
  return ballX - ballSize/2 <= player1X + playerWidth && ballX - ballSize/2 >= player1X && ballY >= player1Y && ballY <= (player1Y + playerHeight);
}

boolean hitPlayer2() {
  return ballX + ballSize/2 >= player2X && ballX + ballSize/2 <= player2X + playerWidth && ballY >= player2Y && ballY <= (player2Y + playerHeight);
}

boolean hitTopBorder() {
  return ballY - ballSize/2 <= marginSize + borderSize;
}

boolean hitBottomBorder() {
  return ballY + ballSize/2 >= height - marginSize - borderSize;
}

boolean hitLeftBorder() {
  return ballX <= 0;
}

boolean hitRightBorder() {
  return ballX >= width;
}
