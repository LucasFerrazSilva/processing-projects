class Ball {
  
  final static int SIZE = 30;
  final static int COLOR = 200;
  
  private Position position;
  private Speed speed;
  private Color cor;
  
  
  public Ball(Position position, Speed speed) {
    this.position = position;
    this.speed = speed;
    this.cor = new Color(COLOR);
  }
  
  
  void draw(Player player1, Player player2) throws HitLeftBorderException, HitRightBorderException {
    // Color
    this.cor.applyFillAndStroke();
    
    this.position.move(speed);
    
    if(hitPlayer1(player1) && speed.getXSpeed() < 0){
      speed.invertXSpeed();
      speed.increaseXSpeed();
    } else if(hitPlayer2(player2) && speed.getXSpeed() > 0){
      speed.invertXSpeed();
      speed.increaseXSpeed();
    }
    
    if(hitTopBorder() || hitBottomBorder()) {
      speed.invertYSpeed();
    }
    
    if(hitLeftBorder()) {
      throw new HitLeftBorderException();
    }
    
    if(hitRightBorder()) {
      throw new HitRightBorderException();
    }
    
    ellipse(position.getX(), position.getY(), SIZE, SIZE);
  }
  
  private boolean hitPlayer1(Player player) {
    Position playerPosition = player.getPosition();
    
    return
      position.getX() - SIZE/2 >= playerPosition.getX()
      && position.getX() - SIZE/2 <= playerPosition.getX() + Player.WIDTH
      && position.getY() >= playerPosition.getY()
      && position.getY() <= playerPosition.getY() + Player.HEIGHT;
  }
  
  private boolean hitPlayer2(Player player) {
    Position playerPosition = player.getPosition();
    
    return
      position.getX() + SIZE/2 >= playerPosition.getX()
      && position.getX() + SIZE/2 <= playerPosition.getX() + Player.WIDTH
      && position.getY() >= playerPosition.getY()
      && position.getY() <= playerPosition.getY() + Player.HEIGHT;
  }
  
  boolean hitTopBorder() {
    return position.getY() - SIZE/2 <= Field.MARGIN_SIZE + Field.BORDER_SIZE;
  }
  
  boolean hitBottomBorder() {
    return position.getY() + SIZE/2 >= height - Field.MARGIN_SIZE + Field.BORDER_SIZE;
  }
  
  boolean hitLeftBorder() {
    return position.getX() <= 0;
  }
  
  boolean hitRightBorder() {
    return position.getX() >= width;
  }
}
