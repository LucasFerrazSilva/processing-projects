Circle circle;

void setup() {
  size(1500, 1000);
  
  circle = new Circle();
}

void draw() {
  background(20);
  
  circle.draw();
  circle.move();
}

void mousePressed() {
  circle = new Circle();
}
