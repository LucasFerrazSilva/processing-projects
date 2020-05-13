class GameManager {

  Background background;
  Spaceship spaceship;
  MeteorsManager meteorsManager;
  CollisionSeeker collisionSeeker;
  Score score;
  boolean gameOver;
  
  
  public GameManager() {
    this.background = new Background();
    this.spaceship = new Spaceship();
    this.meteorsManager = new MeteorsManager();
    this.score = new Score();
    this.collisionSeeker = new CollisionSeeker(this.spaceship, this.meteorsManager, this.score);
    this.gameOver = false;
  }
  

  public void draw() {
    this.background.draw();
    
    if(!gameOver) {
      this.spaceship.draw();
      
      try {
        this.meteorsManager.draw();
      } catch (GameOverException e) {
        this.gameOver = true;
      }
      
      this.score.draw();
      
      this.collisionSeeker.seek();
    } else {
      showGameOverMessage();
    }
  }
  
  public void keyPressed(int keyCode) {
    this.spaceship.move(keyCode);
  }
  
  private void showGameOverMessage() {    
    fill(255, 200);
    textAlign(CENTER);
    text("Game Over\r\nScore: " + this.score.get(), width/2, height/2);
  }

}
