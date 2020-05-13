float circleX;
float circleY;
float circleWidth;
float circleHeight;
float defaultSize = 40;

void setup() {
  size(1000, 1000);
}

void draw() {
  background(0);
  
  circleX = width/2;
  circleY = height/2;
  circleWidth = defaultSize;
  circleHeight = defaultSize;
  
  if(mouseX > width/2 + defaultSize/2) {
    circleX = width/2 - defaultSize/2 + (mouseX - width/2 + defaultSize/2)/2;
    circleWidth = mouseX - width/2 + defaultSize/2;
  } else if (mouseX < width/2 - defaultSize/2) {
    circleX = width/2 + defaultSize/2 - ((width/2 + defaultSize/2) - mouseX)/2;
    circleWidth = width/2 + defaultSize/2 - mouseX;
  }
  
  if(mouseY > height/2 + defaultSize/2) {
    circleY = mouseY - (mouseY - (height/2 - defaultSize/2))/2;
    circleHeight = mouseY - (height/2 - defaultSize/2);
  } else if (mouseY < height/2 - defaultSize/2) {
    circleY = mouseY + (height/2 + defaultSize/2 - mouseY)/2;
    circleHeight = height/2 + defaultSize/2 - mouseY;
  }
  
  fill(200, 200);
  ellipse(circleX, circleY, circleWidth, circleHeight);
}
