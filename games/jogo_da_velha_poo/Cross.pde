class Cross extends Shape {
  
  public void draw(Position position, float fieldWidth, float fieldHeight) {
    super.applyFillAndStroke(0, 0, 200);
    
    float line1X = position.getX() + Shape.MARGIN;
    float line1Y = position.getY() + Shape.MARGIN;
    float line1finalX = position.getX() + fieldWidth - Shape.MARGIN;
    float line1finalY = position.getY() + fieldHeight - Shape.MARGIN;
    
    line(line1X, line1Y, line1finalX, line1finalY);
    
    
    float line2X = position.getX() + fieldWidth - Shape.MARGIN;
    float line2Y = position.getY() + Shape.MARGIN;
    float line2finalX = position.getX() + Shape.MARGIN;
    float line2finalY = position.getY() + fieldHeight - Shape.MARGIN;
    
    line(line2X, line2Y, line2finalX, line2finalY);
  }
  
  public String getType() {
    return "Cross";
  }
  
  public Shape toggle() {
    return new Circle();
  }
  
}
