class Score {
  
  final static int SIZE = 30;
  final static int MARGIN_TOP = 20;
  final static int COLOR = 155;
  
  private Position position;
  private Color cor;
  
  private int score;
  
  
  public Score(Position position) {
    this.position = position;
    this.cor = new Color(COLOR);
    this.score = 0;
  }
  
  
  public void draw() {
    textAlign(CENTER);
    textSize(SIZE);
    
    this.cor.applyFill();
    
    text("Score: " + this.score, position.getX(), position.getY());  
  }  
  
  public void increase() {
    this.score++;
  }
  
}
