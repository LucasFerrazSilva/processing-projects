int margin;
boolean isCroos;

void setup() {
  size(500, 500);
  
  margin = 10;
  isCroos = true;
  initFields();
}

void draw() {
  drawBackground();
  
  drawFields();
}

void mousePressed() {
  if (isCroos) {
    drawCross(mouseX, mouseY);
  } else {
    drawCircle(mouseX, mouseY);
  }
  
  isCroos = !isCroos;
}
