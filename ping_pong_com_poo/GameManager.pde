class GameManager {
  
  private Field field;
  private Player player1;
  private Player player2;
  private Ball ball;
  private Score scorePlayer1;
  private Score scorePlayer2;
  
  
  public GameManager() {
    createScorePlayer1();
    createScorePlayer2();
    
    initializeVariables();
  }
  
  private void createScorePlayer1() {
    Position position = new Position(width/4, Field.MARGIN_SIZE + Field.BORDER_SIZE + Score.MARGIN_TOP + Score.SIZE/2);
    scorePlayer1 = new Score(position);
  }
  
  private void createScorePlayer2() {
    Position position = new Position(3*width/4, Field.MARGIN_SIZE + Field.BORDER_SIZE + Score.MARGIN_TOP + Score.SIZE/2);
    scorePlayer2 = new Score(position);
  }
   
  
  public void initializeVariables() {    
    createField();
    createBall();  
    createPlayer1();  
    createPlayer2();
  }
  
  private void createField() {
    field = new Field();
  }
  
  private void createBall() {
    Position position = new Position(width/2, height/2);
    Speed speed = new Speed((random(-10, 10) >= 0 ? 5 : -5), random(-5, 5));  
    ball = new Ball(position, speed);
  }
  
  private void createPlayer1() {
    Position position = new Position(Field.MARGIN_SIZE + Field.BORDER_SIZE + Player.MARGIN, (height/2) - (Player.HEIGHT/2));
    Color cor = new Color(255, 50, 50);  
    player1 = new Player(position, cor);
  }
  
  private void createPlayer2() {
    Position position = new Position(width - Field.MARGIN_SIZE - Field.BORDER_SIZE - Player.MARGIN - Player.WIDTH, (height/2) - (Player.HEIGHT/2));
    Color cor = new Color(50, 50, 255);  
    player2 = new Player(position, cor);
  }
  
  
  public void draw() {
    background(50);
    
    field.draw();  
    player1.draw();  
    player2.draw();
    scorePlayer1.draw();
    scorePlayer2.draw();
    
    try {
      ball.draw(player1, player2);
    } catch(HitRightBorderException e) {
      scorePlayer1.increase();
      initializeVariables();
    } catch(HitLeftBorderException e) {
      scorePlayer2.increase();
      initializeVariables();
    }
  }
  
  
  public void keyPressed(char keyChar) {  
    switch(keyChar) {
    case 'w': 
      player1.goUp();
      break;
    case 's':
      player1.goDown();
      break;
    case '8': 
      player2.goUp();
      break;
    case '5':
      player2.goDown();
      break;
    default: 
      break;
    }
  }

  
}
