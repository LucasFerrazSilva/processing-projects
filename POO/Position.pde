class Position {
  
  float x;
  float y;
  
  
  public Position(float x, float y){
    this.x = x;
    this.y = y;
  }
  
  
  public void move(Speed speed) {
    this.x += speed.getSpeedX();
    this.y += speed.getSpeedY();
  }
  
  
  public float getX() {
    return x;
  }
  
  public float getY() {
    return y;
  }
  
}
