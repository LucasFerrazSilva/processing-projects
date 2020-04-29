PImage img;
int ellipseSize = 20;

void setup() {
  size(2048, 1365);
  
  img = loadImage("1.jpg");
  background(0);
}

void draw() {
  noStroke();
    
  for(int i = 0; i < 10000; i++) {
    int x = int(random(width));
    int y = int(random(width));
    color c = img.get(x, y);
    
    fill(c, 20);
    ellipse(x, y, ellipseSize, ellipseSize);
  }
}
