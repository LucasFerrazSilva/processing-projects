class Meteor {
  
  final static int MINIMUM_SIZE = 80;
  final static int MAXIMUM_SIZE = 120;
  final static int BASE_SPEEDY = 3;
  final static int COLOR = 255;

  private Position position;
  private Speed speed;
  private float meteorWidth;
  private float meteorHeight;
  private Color cor;
  private boolean destroyed;
  
  
  public Meteor(float speedY) {
    this.meteorHeight = random(Meteor.MINIMUM_SIZE, Meteor.MAXIMUM_SIZE);
    this.meteorWidth = 2 * this.meteorHeight/3;
    this.position = new Position(random(meteorWidth/2, width - meteorWidth/2), -meteorHeight);
    this.speed = new Speed(0, speedY);
    this.cor = new Color(COLOR);
    this.destroyed = false;
  }
  
  
  public void draw() {
    drawTail();
    drawBody();
  }
  
  private void drawBody() {
    this.cor.applyFillAndStroke();
    ellipse(this.position.getX(), this.position.getY(), this.meteorWidth, this.meteorHeight);
  }
  
  private void drawTail() {
    fill(0, 100, 160, 5);
    noStroke();
    for(float multiplier = 1.5; multiplier <= 6; multiplier += 0.1) {
      arc(this.position.getX(), this.position.getY(), this.meteorWidth, this.meteorHeight * multiplier, PI, PI+PI); 
    }
  }
  
  public void move() throws GameOverException {
    this.position.move(this.speed);
    
    if(this.position.getY() > height + this.meteorHeight/2)
      throw new GameOverException();
  }
  
  public boolean wasDestroyed() {
    return destroyed;
  }
  
  public boolean hits(Shot shot) {
    Position shotPosition = shot.getPosition();
    
    return 
      shotPosition.getX() >= this.position.getX() - this.meteorWidth/2 && shotPosition.getX() <= this.position.getX() + this.meteorWidth/2 
      && shotPosition.getY() >= this.position.getY() - this.meteorHeight/2 && shotPosition.getY() <= this.position.getY() + this.meteorHeight/2;
  }
  
  public void setAsDestroyed() {
    this.destroyed = true;
  }

}
