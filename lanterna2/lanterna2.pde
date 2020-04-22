int rectSize;
int i, j;

void setup() {
  size(500, 500);
  background(20);
  
  rectSize = 3;
  i = 0;
  j = 0;
}

void draw() {
    //fill(random(50, 200));
    //rect(i, j, rectSize, rectSize);
    
    //i += rectSize;
    
    //if(i >= width) {
    //  i = 0;
    //  j += rectSize;
    //}
  
  for(int i = 0; i < height; i += rectSize) {
    for(int j = 0; j < width; j += rectSize) {
      fill(255-dist(i, j, mouseX, mouseY)*2);
      stroke(255-dist(i, j, mouseX, mouseY)*2);
      rect(i, j, rectSize, rectSize);
    }
  }
}
