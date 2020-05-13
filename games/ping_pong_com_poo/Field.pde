class Field {
  
  final static float BORDER_SIZE = 1;
  final static float MARGIN_SIZE = 10;
  
  
  public void draw() {  
    // External rectangle
    fill(50);
    stroke(255);
    strokeWeight(BORDER_SIZE);
    rect(MARGIN_SIZE, MARGIN_SIZE, width - MARGIN_SIZE - MARGIN_SIZE, height - MARGIN_SIZE - MARGIN_SIZE);
    
    // Middle line
    line(width/2, MARGIN_SIZE, width/2, height - MARGIN_SIZE);
    
    // Middle circle
    noFill();
    ellipse(width/2, height/2, 100, 100);
  }
  
}
