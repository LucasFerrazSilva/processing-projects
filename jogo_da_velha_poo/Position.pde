class Position {

  private float x;
  private float y;
  
  
  public Position(float x, float y) {
    this.x = x;
    this.y = y;
  }
  
  
  public float getX() {
    return x;
  }
  
  public float getY() {
    return y;
  }
  
  
  @Override
  public String toString() {
    return "Position[x: " + x + ", y: " + y + "]";
  }
  
}
