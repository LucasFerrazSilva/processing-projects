abstract class Shape {
  
  final static int MARGIN = 10;
  
  
  public abstract void draw(Position position, float fieldWidth, float fieldHeight);
  
  public abstract String getType();
  
  public abstract Shape toggle();
  
  
  private void applyFillAndStroke(float red, float green, float blue) {
    noFill();
    stroke(red, green, blue);
    strokeWeight(5);
  }
  
  public boolean equals(Shape shape) {
    return getType().equals(shape.getType());
  }
  
}
