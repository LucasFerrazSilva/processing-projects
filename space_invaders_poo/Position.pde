class Position {

  private float x;
  private float y;
  
  
  public Position(float x, float y) {
    this.x = x;
    this.y = y;
  }
  
  
  public void move(Speed speed) {
    this.x += speed.getXSpeed();
    this.y += speed.getYSpeed();
  }
  
  public float getX() {
    return x;
  }
  
  public float getY() {
    return y;
  }
  
  public void setY(float y) {
    this.y = y;
  }
  
  public Position copy() {
    return new Position(x, y);
  }
    
  
  @Override
  public String toString() {
    return "Position[x: " + x + ", y: " + y + "]";
  }
  
}
