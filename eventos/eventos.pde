void setup() {
  size(500, 500);
  background(30);
  stroke(100);
}

void draw() {
  line(pmouseX, pmouseY, mouseX, mouseY);
}

void mousePressed() {
  stroke(0+mouseX, 0+mouseY, 0+(mouseX/4)+(mouseY/4));
}

void keyPressed() {
  strokeWeight(1);
}
