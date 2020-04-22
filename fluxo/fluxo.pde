void setup() {
  size(500, 500);
  background(30);
}

void draw() {
  stroke(0+mouseX, 0+mouseY, 0+(mouseX/4)+(mouseY/4));
  strokeWeight(5+mouseX/100);
  //strokeWeight((mouseX - pmouseX) + (mouseY - pmouseY));
  line(pmouseX, pmouseY, mouseX, mouseY);
}
