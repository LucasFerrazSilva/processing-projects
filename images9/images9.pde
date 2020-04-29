PImage img;

float xspeed;
float yspeed;
float circleX;
float circleY;

float hitIncrement = -1;

void setup() {
  size(2048, 1365);
  background(50);
  
  img = loadImage("1.jpg");
  
  xspeed = yspeed = 7;
  circleX = circleY = 30;
}

void draw() {
  drawCircle();  

  incrementCircleX();
  
  incrementCircleY();
}

void incrementCircleX() {
  if(circleX + 20 > width || circleX - 20 < 0) {
    xspeed *= hitIncrement;
  }
  
  circleX += xspeed;
}

void incrementCircleY() {
  if(circleY + 20 > height || circleY - 20 < 0) {
    yspeed *= hitIncrement;
  }
  circleY += yspeed;
}

void drawCircle() {
  //float red = circleX/2;
  //float green = circleY/2;
  //float blue = circleX/4 - circleY/4;  
  
  //fill(red, green, blue, 200);
  //stroke(red, green, blue, 200);
  
  //ellipse(circleX, circleY, 20, 20);
  
  
  loadPixels();
  img.loadPixels();
  
  for(float y2 = circleY - 10; y2 < circleY + 10; y2++) {
    for(float x2 = circleX - 10; x2 < circleX + 10; x2++) {
      if(dist(x2, y2, circleX, circleY) < 10) {
        int index = int(x2 + y2 * width);
        pixels[index] = img.pixels[index];
      }
    }      
  }
  
  updatePixels();
}
