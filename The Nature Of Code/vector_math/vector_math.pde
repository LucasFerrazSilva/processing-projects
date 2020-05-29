PVector center;
PVector mouse;
PVector diff;

void setup() {
  size(600,400);
  
  center = new PVector(width/2, height/2);
}

void draw() {
  background(20);  
  
  mouse = new PVector(mouseX, mouseY);
  diff = new PVector(mouseX, mouseY);
  diff.sub(center);
  
  stroke(200, 0, 0);
  line(0, 0, center.x, center.y);
  
  stroke(0, 200, 0);
  line(0, 0, mouse.x, mouse.y);
  
  stroke(0, 0, 200);
  line(center.x, center.y, center.x+diff.x, center.y+diff.y);
  
  float mag = diff.mag();
  noFill();
  stroke(100);
  ellipse(width/2, height/2, mag*2, mag*2);
}
