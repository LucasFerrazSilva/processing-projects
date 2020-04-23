class Speed {
  
  float xSpeed;
  float ySpeed;
  
  
  public Speed(float xSpeed, float ySpeed) {
    this.xSpeed = xSpeed;
    this.ySpeed = ySpeed;
  }
  
  
  public void invertXSpeed() {
    this.xSpeed *= -1;
  }
  
  public void invertYSpeed() {
    this.ySpeed *= -1;
  }
  
  
  public void increaseXSpeed() {
    increaseXSpeed(1);
  }
  
  public void increaseXSpeed(float increment) {
    if(xSpeed < 0)
      increment *= -1;
    
    this.xSpeed += increment;
  }
  
  
  public void increaseYSpeed() {
    increaseYSpeed(1);
  }
  
  public void increaseYSpeed(float increment) {
    if(ySpeed < 0)
      increment *= -1;
      
    this.ySpeed += increment;
  }
  
  
  public float getXSpeed() {
    return xSpeed;
  }
  
  public float getYSpeed() {
    return ySpeed;
  }
  
}
