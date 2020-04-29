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

void keyPressed() {
  k = key;
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
      
      switch(k) {
        case '1':
          pixels[index] = color(r, b, g);
          break;
        case '2':
          pixels[index] = color(g, r, b);
          break;
        case '3':
          pixels[index] = color(g, b, r);
          break;
        case '4':
          pixels[index] = color(b, r, g);
          break;
        case '5':
          pixels[index] = color(b, g, r);
          break;
        default:
          pixels[index] = color(r, g, b);
      }
    }
  }
  
  updatePixels();
}
