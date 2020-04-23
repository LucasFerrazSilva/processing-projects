class Shot {

  final static float HEIGHT = 10;
  final static float WIDTH = HEIGHT/2;
  final static float SPEEDY = -10;
  final static int COLOR_RED = 255;
  final static int COLOR_GREEN = 255;
  final static int COLOR_BLUE = 0;
  
  private Position position;
  private Color cor;
  private Speed speed;
  
  
  public Shot(Position position) {
    this.position = position;
    this.cor = new Color(COLOR_RED, COLOR_GREEN, COLOR_BLUE);
    this.speed = new Speed(0, SPEEDY);
  }
  
  
  public void draw() {
    this.cor.applyFillAndStroke();
    ellipse(this.position.getX(), this.position.getY(), Shot.WIDTH, Shot.HEIGHT);
  }
  
  public void move() {
    this.position.move(speed);
  }
  
}
