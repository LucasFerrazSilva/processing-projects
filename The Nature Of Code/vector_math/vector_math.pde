PVector center;
PVector mouse;

void setup() {
  size(600,400);
}

void draw() {
  background(20);
  
  translate(width/2, height/2);
  
  noStroke();
  fill(200);
  ellipse(0, 0, 5, 5);  
  
  center = new PVector(width/2, height/2);
  mouse = new PVector(mouseX, mouseY);
  
  mouse.sub(center);
  mouse.mult(0.5);
  
  stroke(200);
  line(0, 0, mouse.x, mouse.y);
}
