class Circle extends Shape {
  
  public void draw(Position position, float fieldWidth, float fieldHeight) {
    super.applyFillAndStroke(200, 0, 0);
    
    float circleX = position.getX() + fieldWidth/2;
    float circleY = position.getY() + fieldHeight/2;
    float circleWidth = fieldWidth - MARGIN*2;
    float circleHeight = fieldHeight - MARGIN*2;
    
    ellipse(circleX, circleY, circleWidth, circleHeight);
  }
  
  public String getType() {
    return "Circle";
  }
  
  public Shape toggle() {
    return new Cross();
  }
  
}
