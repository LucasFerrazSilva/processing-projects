class Ball {
  
  private float size;
  private Position position;
  private Speed speed;
  private Color cor;
  
  
  public Ball(float size, Position position, Speed speed, Color cor) {
    this.size = size;
    this.position = position;
    this.speed = speed;
    this.cor = cor;
  }
  
  
  public void draw() {
    cor.apply();
    ellipse(position.getX(), position.getY(), size, size);
  }
  
  public void move() {
    this.position.move(speed);
  }
  
  public void checkEdges() {
    if(position.getX() + size/2 >= width || position.getX() - size/2 <= 0) {
      this.speed.invertSpeedX();
    }
    
    if(position.getY() + size/2 >= height || position.getY() - size/2 <= 0){
      this.speed.invertSpeedY();
    }
  }
  
}
