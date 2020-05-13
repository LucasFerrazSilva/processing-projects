PImage img;
char k = 'a';

void setup() {
  size(275, 183);
    
  img = loadImage("download (1).jpeg");
  
  displayImage();
}

void draw() {
  displayImage();
}

void displayImage() {  
  loadPixels();
  img.loadPixels();
  
  for(int y = 0; y < height; y++) {
    for(int x = 0; x < width; x++) {
      int index = x + y * width;
      float r = red(img.pixels[index]);
      float g = green(img.pixels[index]);
      float b = blue(img.pixels[index]);
      
      float dist = dist(mouseX, mouseY, x, y);
      float factor = map(dist, 0, 50, 1, 0);
      
      pixels[index] = color(r*factor, g*factor, b*factor);
    }
  }
  
  //for(int y = 0; y < height; y++) {
  //  for(int x = 0; x < width; x++) {
  //    int index = x + y * width;
  //    float b = brightness(img.pixels[index]);
      
  //    if(b > 200) {
  //      pixels[index] = color(255);
  //    } else if(b > 100) {
  //      pixels[index] = color(150);
  //    } else {
  //      pixels[index] = color(0);
  //    }
  //  }
  //}
  
  updatePixels();
}
