void drawField() {  
  // External rectangle
  fill(50);
  stroke(255);
  strokeWeight(borderSize);
  rect(marginSize, marginSize, width-marginSize-marginSize, height-marginSize-marginSize);
  
  // Middle line
  line(width/2, marginSize, width/2, height-marginSize);
  
  // Middle circle
  fill(0, 0);
  ellipse(width/2, height/2, 100, 100);
}
