
void drawCircle(int fieldNumber){
  int[] posisitions = getFieldPosition(fieldNumber);
  
  float startX = posisitions[0];
  float startY = posisitions[1];
  
  float displacementX = width/3;
  float displacementY = width/3;
  
  noFill();
  stroke(255, 0, 0);
  strokeWeight(5);
  ellipse(startX + displacementX/2, startY + displacementY/2, displacementX - margin*2, displacementY - margin*2);
  
  updateField(fieldNumber, 2);
}

void drawCircle(float mouseX, float mouseY) {
  int fieldNumber = getFieldNumber(mouseX, mouseY);
  
  if (fieldCanBeChanged(fieldNumber)) {
    drawCircle(fieldNumber);
  }
}
