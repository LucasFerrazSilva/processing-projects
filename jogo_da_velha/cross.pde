
void drawCross(int fieldNumber) {
  int[] posisitions = getFieldPosition(fieldNumber);
  
  float startX = posisitions[0];
  float startY = posisitions[1];
  
  float displacementX = width/3;
  float displacementY = width/3;
  
  stroke(0, 0, 255);
  strokeWeight(5);
  line(startX + margin, startY + margin, startX + displacementX - margin, startY + displacementY - margin);
  line(startX + displacementX - margin, startY + margin, startX + margin, startY + displacementY - margin);
  
  updateField(fieldNumber, 1);
}

void drawCross(float mouseX, float mouseY) {
  int fieldNumber = getFieldNumber(mouseX, mouseY);
  
  if (fieldCanBeChanged(fieldNumber)) {
    drawCross(fieldNumber);
  }
}
