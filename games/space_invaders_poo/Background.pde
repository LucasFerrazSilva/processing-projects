class Background {
  
  final static int NUMBER_OF_STARS = 200;
  final static int COLOR = 0;
  
  private Star[] stars;
  
  
  public Background() {
    createStars();
  }
  
  
  public void draw() {
    background(Background.COLOR);
    
    for(int i = 0; i < NUMBER_OF_STARS; i++) {
      Star star = this.stars[i];
      
      star.draw();
      star.move();
    }
  }
  
  private void createStars() {
    this.stars = new Star[NUMBER_OF_STARS];
    
    for(int i = 0; i < NUMBER_OF_STARS; i++) {
      this.stars[i] = new Star();
    }
  }
  
}
