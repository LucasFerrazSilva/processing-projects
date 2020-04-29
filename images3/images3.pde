PImage img;
int range = 10;
int changeRate = 10;

void setup() {
  size(1280, 720);
  
  img = loadImage("hedgehog.png");
  
  image(img, 0, 0, img.width, img.height);
}

void draw() {
  
}

void mousePressed() {
  loadPixels();
  
  switch(mouseButton) {
    case 37:
      turnWhiter();
      break;
    case 39:
      turnDarker();
      break;
  }
  
  updatePixels();
}

void turnWhiter() {
  for(int y = mouseY - range; y < mouseY + range; y++) {
    for(int x = mouseX - range; x < mouseX + range; x++) {
      int index = x + y * width;
      color cor = pixels[index];
      
      if(dist(x, y, mouseX, mouseY) <= range) {
        pixels[index] = color(red(cor) + changeRate, green(cor) + changeRate, blue(cor) + changeRate);
      }
    }
  }
}

void turnDarker() {
  for(int y = mouseY - range; y < mouseY + range; y++) {
    for(int x = mouseX - range; x < mouseX + range; x++) {
      int index = x + y * width;
      color cor = pixels[index];
      
      if(dist(x, y, mouseX, mouseY) <= range) {
        pixels[index] = color(red(cor) - changeRate, green(cor) - changeRate, blue(cor) - changeRate);
      }
    }
  }
}
