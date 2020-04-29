PImage img;
int increaseRate = 3;

void settings() {
  size(258 * increaseRate, 195 * increaseRate);
}

void setup() {
  img = loadImage("download.jpeg");
    
  displayImage();
}

void displayImage() {  
  loadPixels();
  img.loadPixels();  
  
  for(int y = 0, y2 = 0; y < img.height; y++, y2 += increaseRate) {
    for(int x = 0, x2 = 0; x < img.width; x++, x2 += increaseRate) {
      int imgIndex = x + y * img.width;
      
      for(int increaseCountY = 0; increaseCountY < increaseRate; increaseCountY++) {
        for(int increaseCountX = 0; increaseCountX < increaseRate; increaseCountX++) {
          pixels[x2 + increaseCountX + (y2 + increaseCountY) * width] = img.pixels[imgIndex]; 
        }
      }
    }
  }
  
  updatePixels();
}
