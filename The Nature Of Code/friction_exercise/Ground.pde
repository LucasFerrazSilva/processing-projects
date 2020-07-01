class Ground {
  
  private final static float X_SIZE = 150;
  private final static float Y_SIZE = 50;
  
  float frictionFactor = -0.05;
  
  
  Mug mug;
  Sand sand;
  
  float xStart;
  float yStart;
  
  
  public Ground(float xStart, float yStart) {
    this.mug = new Mug(yStart, X_SIZE, Y_SIZE);
    this.sand = new Sand(yStart, X_SIZE, Y_SIZE);
    
    this.xStart = xStart;
    this.yStart = yStart;
  }
  
  
  public void display() {
    noStroke();
    fill(80);
    rect(xStart, yStart, width, height/3);
    
    this.mug.display();
    this.sand.display();
  }
  
  public float getFrictionFactor(float x) {
    if(x > mug.xStart && x < mug.xStart + mug.xSize)
      return mug.frictionFactor;
      
    if(x > sand.xStart && x < sand.xStart + sand.xSize)
      return sand.frictionFactor;
    
    return -0.1;
  }
  
}
