void setup() {
  size(640, 500);
  background(50);
  background(50);
}

int circleX = 250;
int circleY = 250;
boolean isGoingRight = true;
boolean isGoingDown = true;

void draw() {
  if (circleX + 10 >= width) {
    circleX -= random(50);
  } else if(circleX - 10 <= 0) {
    circleX += random(50);
  } else {
    circleX += random(-50,50);
  }
  
  if (circleY + 10 >= height) {
    circleY -= random(50);
  } else if(circleY - 10 <= 0) {
    circleY += random(50);
  } else {
    circleY += random(-50,50);
  }


  int red = circleX/2;
  int green = circleY/2;
  int blue = circleX/4 - circleY/4;  
  fill(red, green, blue, 200);
  stroke(red, green, blue, 200);
  
  ellipse(circleX, circleY, random(20), random(20));
}
