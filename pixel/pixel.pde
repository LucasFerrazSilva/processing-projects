int x, y = 0;

void setup() {
  size(200,200);
  background(0);
  loadPixels();
}

void draw() {
  for(x = 0; y < height && x < width ; x++) {
    float actualRed = map(x, 0, width, 0, 255);
    float actualGreen = map(y, 0, height, 0, 255);
    float actualBlue = map(x/2 + y/2, 0, width/2 + height/2, 0, 255);
    
    pixels[x + (y * width)] = color(actualRed, actualGreen, actualBlue);
    updatePixels();
  }
  y++;
  
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
