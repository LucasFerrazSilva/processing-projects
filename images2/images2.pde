PImage img;

void setup() {
  size(1000, 1000);
  background(20);
  
  img = loadImage("hedgehog.png");
  
  image(img, 0, 0, width/2, height/2);   
  image(img, width/2, 0, width/2, height/2);
  image(img, 0, height/2, width/2, height/2);   
  image(img, width/2, height/2, width/2, height/2);
  
  loadPixels();
  for(int y = 0; y < height; y++) {
    for(int x = 0; x < width; x++) {
      int index = x + y * width;
      color cor = pixels[index];
      
      float red = red(cor);
      float green = green(cor);
      float blue = blue(cor);
      
      if(x > width/2 && y < height/2) {
        pixels[index] = color(blue, green, red);
      } else if(x < width/2 && y > height/2) {
        pixels[index] = color(red-50, green-50, blue-50);      
      } else if(x > width/2 && y > height/2) {
        pixels[index] = color(red+50, green+50, blue+50);
      }
    }
  }
  updatePixels();
}
