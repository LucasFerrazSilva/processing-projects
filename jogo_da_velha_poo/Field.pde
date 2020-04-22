class Field { 
  
  final static int COLOR = 220;
  final static int STROKE_COLOR = 100;
  final static int STROKE_WEIGHT = 3;
  
  private Position position;
  private Color cor;
  private Shape shape;
  
  private float fieldWidth;
  private float fieldHeight;
  
  
  public Field(Position position) {
    this.position = position;
    
    this.cor = new Color(COLOR);
    
    this.shape = null;
    
    this.fieldWidth = width/GameManager.NUMBER_OF_FIELDS;
    this.fieldHeight = height/GameManager.NUMBER_OF_FIELDS;
  }
  
  
  public void draw() {
    cor.applyFill();
    stroke(STROKE_COLOR);
    strokeWeight(STROKE_WEIGHT);
    rect(this.position.getX(), this.position.getY(), this.fieldWidth, this.fieldHeight);
    
    if(shape != null)
      shape.draw(this.position, this.fieldWidth, this.fieldHeight);
  }
  
  
  public void setShape(Shape shape) {
    this.shape = shape;
  }
  
  public boolean isEmpty() {
    return this.shape == null;
  }
  
  public Shape getShape() {
    return shape;
  }
  
  public void markAsWinner() {
    this.cor = new Color(0, 200, 0);
    this.draw();
  }
  
    
  @Override
  public String toString() {
    return "Field[position: " + position + "]\r\n";
  }  
  
}
