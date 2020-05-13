class Speed {
  
  float speedX;
  float speedY;
  
  
  public Speed(float speedX, float speedY) {
    this.speedX = speedX;
    this.speedY = speedY;
  }
  
  
  public void invertSpeedX() {
    this.speedX *= -1;
  }
  
  public void invertSpeedY() {
    this.speedY *= -1;
  }
  
  
  public float getSpeedX() {
    return speedX;
  }
  
  public float getSpeedY() {
    return speedY;
  }
  
}
