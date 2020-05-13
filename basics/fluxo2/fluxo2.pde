void setup() {
  size(500, 500);
  background(30);
}

void draw() {
  fill(0+mouseX, 0, 0, 100);
  ellipse(width-mouseX, height-mouseY, 50, 50);

  fill(0, 0+mouseX, 0, 100);
  ellipse(mouseX, height-mouseY, 50, 50);

  fill(0, 0, 0+mouseX, 100);
  ellipse(width-mouseX, mouseY, 50, 50);

  fill(0+(mouseY+mouseX)/5, 0+(mouseY+mouseX)/5, 0+(mouseY+mouseX)/5, 100);
  ellipse(mouseX, mouseY, 50, 50);
}
