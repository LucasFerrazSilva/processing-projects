class Star {
  
  final static int COLOR = 255;
  final static int MINIMUM_OPACITY = 150;
  final static int MAXIMUM_OPACITY = 200;
  final static int MINIMUM_SIZE = 1;
  final static int MAXIMUM_SIZE = 5;
  final static float MINIMUM_SPEED = 0.2;
  final static float MAXIMUM_SPEED = 0.4;

  private Position position;
  private Speed speed;
  private float size;
  private Color cor;
  
  
  public Star() {
    this.position = new Position(random(width), random(height));
    this.speed = new Speed(0, random(Star.MINIMUM_SPEED, Star.MAXIMUM_SPEED));
    this.cor = new Color(Star.COLOR, random(Star.MINIMUM_OPACITY, Star.MAXIMUM_OPACITY));
    this.size = random(Star.MINIMUM_SIZE, Star.MAXIMUM_SIZE);
  }
  
  
  public void draw() {
    this.cor.applyFill();
    noStroke();
    ellipse(this.position.getX(), this.position.getY(), this.size, this.size);
  }
  
  public void move() {
    this.position.move(this.speed);
    
    if(this.position.getY() > height)
      this.position.setY(0);
  }

}
