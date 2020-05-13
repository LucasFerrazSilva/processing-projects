void setup() {
  size(800, 800);
  background(20); 
  for(int i = 0; i < 10; i++) {
    drawStar(100 + i*70, 100 + i*70);
  }
}

void draw() { 
}

void drawStar(float x, float y) {
  fill(127);
  stroke(255);
  strokeWeight(2);
  
  beginShape();
  vertex(x, y-50);
  vertex(x+14, y-20);
  vertex(x+47, y-15);
  vertex(x+23, y+7);
  vertex(x+29, y+40);
  vertex(x, y+25);
  vertex(x-29, y+40);
  vertex(x-23, y+7);
  vertex(x-47, y-15);
  vertex(x-14, y-20);
  endShape(CLOSE);
}

void mousePressed() {
  drawStar(mouseX, mouseY);
}
