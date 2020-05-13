class Player {
  
  final static float WIDTH = 20;
  final static float HEIGHT = 80;    
  final static float MARGIN = 5;
  final static float YSPEED = 50;
  
  private Position position;
  private Color cor;
  
  
  public Player(Position position, Color cor) {
    this.position = position;
    this.cor = cor;
  }
 
 
  public void draw() {
    cor.applyFillAndStroke();
    
    rect(position.getX(), position.getY(), WIDTH, HEIGHT);
  }
  
  
  public void goUp() {
    if(canGoUp()) {
      Speed speed = new Speed(0, -YSPEED);
      position.move(speed);
    }
  }
  
  public void goDown() {
    if(canGoDown()) {
      Speed speed = new Speed(0, YSPEED);
      position.move(speed);
    }
  }
  
  private boolean canGoUp() {
    return this.position.getY() > Field.MARGIN_SIZE + Field.BORDER_SIZE;
  }
  
  private boolean canGoDown() {
    return this.position.getY() + HEIGHT + YSPEED < height - Field.MARGIN_SIZE + Field.BORDER_SIZE;
  }
  
  
  public Position getPosition() {
    return position;
  }
  
}
