
void setup() {
  size(800, 800);
  
  drawCircles();
}


void drawCircles() {
  loadPixels();
  
  for(int y = 0; y < height; y++) {
    for(int x = 0; x < width; x++) {
      float red = calculateRedValue(x, y);
      float green = calculateGreenValue(x, y);
      float blue = calculateBlueValue(x, y);
      
      pixels[x + (y * width)] = color(red, green, blue);
    }
  }
  
  updatePixels();
}

float calculateRedValue(int x, int y) {
  float dist = dist(x, y, width/3, height/3);
  
  return (dist < width/4 ? 255 : 0);
}

float calculateGreenValue(int x, int y) {
  float dist = dist(x, y, 2*width/3, height/3);
  
  return (dist < width/4 ? 255 : 0);
}

float calculateBlueValue(int x, int y) {
  float dist = dist(x, y, width/2, 2*height/3);
  
  return (dist < width/4 ? 255 : 0);
}
