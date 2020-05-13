void setup() {
  size(640, 500);
  background(50);
  background(50);
}

float speed = 20;
int circleX = 0;
int circleY = 0;
boolean isGoingRight = true;
boolean isGoingDown = true;

void draw() {
  speed = random(20);
  
  if ((isGoingRight && circleX + 10 <= width) || circleX - 10 <= 0) {
    circleX += speed;
    isGoingRight = true;
  } else {
    circleX -= speed;
    isGoingRight = false;
  }

  if ((isGoingDown && circleY + 10 <= height) || circleY - 10 <= 0) {
    circleY += speed;
    isGoingDown = true;
  } else {
    circleY -= speed;
    isGoingDown = false;
  }

  int red = circleX/2;
  int green = circleY/2;
  int blue = circleX/4 - circleY/4;  
  fill(red, green, blue, 200);
  stroke(red, green, blue, 200);
  
  ellipse(circleX, circleY, random(20), random(20));
}
