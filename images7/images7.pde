PImage img;
char k = 'a';

void setup() {
  size(258, 195);
    
  img = loadImage("download.jpeg");
  
  displayImage();
}

void draw() {
  displayImage();
}

void displayImage() {  
  loadPixels();
  img.loadPixels();
  
  for(int y = 0; y < height; y++) {
    for(int x = 0; x < width - 1; x++) {
      int loc1 = x + y * width;
      int loc2 = x + 1 + y * width;
      float b1 = brightness(img.pixels[loc1]);
      float b2 = brightness(img.pixels[loc2]);
      
      float diff = abs(b1 - b2);
      pixels[loc1] = color(diff);
    }
  }
  
  updatePixels();
}
