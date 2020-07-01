class Mug {
  
  private float xSize;
  private float ySize;
  
  float xStart;
  float yStart;
  
  float frictionFactor = -0.5;
  
  
  public Mug(float yStart, float xSize, float ySize) {
    this.yStart = yStart;
    this.xSize = xSize;
    this.ySize = ySize;
    
    this.xStart = width/6;
  }
  
  
  public void display() {
    noStroke();
    fill(139,69,19);
    rect(xStart, yStart, this.xSize, this.ySize);
  }
  
}
