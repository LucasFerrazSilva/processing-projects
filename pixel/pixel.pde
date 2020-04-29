
void setup() {
  size(500, 500);
  background(0);
  loadPixels();
}

void draw() {  
  //float actualRed = map(x, 0, width, 0, 255);
  //float actualGreen = map(y, 0, height, 0, 255);
  //float actualBlue = map(x/2 + y/2, 0, width/2 + height/2, 0, 255);
  
  //set(x, y, color(actualRed, actualGreen, actualBlue));
  
  //x++;
  
  //if(x >= width) {
  //  x = 0;
  //  y++;
  //}
}

void mousePressed() {  
  for(int y = 0; y < height; y++) {
    for(int x = 0; x < width ; x++) {
      float actualRed = map(x, 0, width, 0, 255);
      float actualGreen = map(y, 0, height, 0, 255);
      float actualBlue = 255 - actualRed - actualGreen;
      
      pixels[x + (y * width)] = color(actualRed, actualGreen, actualBlue);
    }
  }
  
  updatePixels();
}

void keyPressed() {
  switch (key) {
    case 'r': paintRed(); break;
    case 'g': paintGreen(); break;
    case 'b': paintBlue(); break;
    default: break;
  }
}

void paintRed() {
  for(int y = 0; y < height; y++) {
    for(int x = 0; x < width; x++) {
      float red = 255 - map(dist(x, y, width/2, height/2), 0, dist(0, 0, width/2, height/2), 0, 255);
      
      pixels[x + (y*width)] = color(red, 0, 0);
    }
  }
  
  updatePixels();
}

void paintGreen() {
  for(int y = 0; y < height; y++) {
    for(int x = 0; x < width; x++) {
      float green = 255 - map(dist(x, y, width/2, height/2), 0, dist(0, 0, width/2, height/2), 0, 255);
      
      pixels[x + (y*width)] = color(0, green, 0);
    }
  }
  
  updatePixels();
}

void paintBlue() {
  for(int y = 0; y < height; y++) {
    for(int x = 0; x < width; x++) {
      float blue = 255 - map(dist(x, y, width/2, height/2), 0, dist(0, 0, width/2, height/2), 0, 255);
      
      pixels[x + (y*width)] = color(0, 0, blue);
    }
  }
  
  updatePixels();
}
