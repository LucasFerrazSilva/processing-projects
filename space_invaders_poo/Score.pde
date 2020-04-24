class Score {
  
  final static int SIZE = 32;
  final static int COLOR = 255;
  final static int OPACITY = 200;

  private int score;
  private Color cor;
  
  
  public Score() {
    this.score = 0;
    this.cor = new Color(Score.COLOR, OPACITY);
  }
  
  
  public void draw() {    
    textSize(SIZE);
    this.cor.applyFillAndStroke();
    text("Score: " + score, 10, 30);
  }
  
  public void increase() {
    this.score++;
  }
  
  public int get() {
    return score;
  }
  
}
