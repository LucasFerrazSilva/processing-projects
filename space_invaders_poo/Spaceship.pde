class Spaceship {
  
  final static int HEIGHT = 60;
  final static int WIDTH = HEIGHT/3;
  final static int WINGS_WIDTH = HEIGHT;
  final static int WINGS_HEIGHT = HEIGHT/2;
  final static int SPEEDX = 20;
  final static int MARGIN_BOTTOM = 20;
  final static int MAX_NUMBER_OF_SHOTS = 1000;
  
  private Position position;
  private Speed speed;
  private Color cor;
  private Color wingsColor;
  private Shot[] shots;
  private int shotsFired;
  
  
  public Spaceship() {
    this.position = new Position(width/2, height - MARGIN_BOTTOM - Spaceship.HEIGHT/2);
    this.speed = new Speed(Spaceship.SPEEDX, 0);
    this.cor = new Color(10, 50, 200);
    this.wingsColor = new Color(20, 80, 255);
    this.shots = new Shot[MAX_NUMBER_OF_SHOTS];
    this.shotsFired = 0;
  }
  
  
  public void draw() {
    drawWings();    
    drawBody();
    drawShots();
  }
  
  private void drawWings() {
    noStroke();
    this.wingsColor.applyFill();
    arc(this.position.getX(), this.position.getY() + Spaceship.HEIGHT/4, Spaceship.WINGS_WIDTH, Spaceship.WINGS_HEIGHT, PI, PI+PI);
  }
  
  private void drawBody() {
    noStroke();
    this.cor.applyFill();
    ellipse(this.position.getX(), this.position.getY(), Spaceship.WIDTH, Spaceship.HEIGHT);
  }
  
  private void drawShots() {
    for(int i = 0; i < this.shotsFired; i++) {
      Shot shot = this.shots[i];
      
      shot.draw();
      shot.move();
    }
  }
  
  
  public void move(int keyCode) {
    switch(keyCode) {
      case 32:
        shoot();
        break;
      case 37:
        moveToTheLeft();
        break;
      case 39:
        moveToTheRight();
        break;
      default:
        break;
    }
  }
  
  private void shoot() {
    Position shotPosition = new Position(this.position.getX(), this.position.getY() - Spaceship.HEIGHT/2);
    Shot shot = new Shot(shotPosition);
    
    this.shots[this.shotsFired++] = shot;
  }
  
  private void moveToTheLeft() {
    if(canGoToTheLeft()){    
      if (this.speed.getXSpeed() > 0)
        this.speed.invertXSpeed();
      
      this.position.move(speed);
    }
  }
  
  private boolean canGoToTheLeft() {
    return this.position.getX() - Spaceship.WINGS_WIDTH/2 - Spaceship.SPEEDX >= 0;
  }
  
  private void moveToTheRight() {
    if(canGoToTheRight()){
      if (this.speed.getXSpeed() < 0)
        this.speed.invertXSpeed();
        
      this.position.move(speed);
    }
  }
  
  private boolean canGoToTheRight() {
    return this.position.getX() + Spaceship.WINGS_WIDTH/2 + Spaceship.SPEEDX <= width;
  }
  
  
}
