class Sand {
  
  private float xSize;
  private float ySize;
  
  float xStart;
  float yStart;
  
  float frictionFactor = -0.99;
  
  
  public Sand(float yStart, float xSize, float ySize) {
    this.yStart = yStart;
    this.xSize = xSize;
    this.ySize = ySize;
    
    this.xStart = 4*width/6;
  }
  
  
  public void display() {
    noStroke();
    fill(255,250,205);
    rect(xStart, yStart, this.xSize, this.ySize);
  }
  
}
