class GameManager {

  Background background;
  Spaceship spaceship;
  
  
  public GameManager() {
    this.background = new Background();
    this.spaceship = new Spaceship();
  }
  

  public void draw() {
    this.background.draw();
    this.spaceship.draw();
  }
  
  public void keyPressed(int keyCode) {
    this.spaceship.move(keyCode);
  }

}
