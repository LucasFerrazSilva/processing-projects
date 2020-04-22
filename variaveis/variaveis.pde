float xspeed;
float yspeed;
float circleX;
float circleY;

float hitIncrement = -0.9;

void setup() {
  size(640, 500);
  background(50);
  background(50);
  
  xspeed = yspeed = 7;
  circleX = circleY = 0;
}

void draw() {  
  incrementCircleX();
  
  incrementCircleY();

  drawCircle();
}

void incrementCircleX() {
  if(circleX > width || circleX < 0) {
    xspeed *= hitIncrement;
  }
  
  circleX += xspeed;
}

void incrementCircleY() {
  if(circleY > height || circleY < 0) {
    yspeed *= hitIncrement;
  }
  circleY += yspeed;
}

void drawCircle() {
  float red = circleX/2;
  float green = circleY/2;
  float blue = circleX/4 - circleY/4;  
  
  fill(red, green, blue, 200);
  stroke(red, green, blue, 200);
  
  ellipse(circleX, circleY, 20, 20);
}
