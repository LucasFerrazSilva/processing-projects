float spaceshipX;
float spaceshipY;
float spaceshipWidth;
float spaceshipHeight;
float spaceshipMarginBottom;
float spaceshipWingWidth;
float spaceshipWingHeight;
float spaceshipSpeed;


void initializeSpaceshipVariables() {
  spaceshipMarginBottom = 10;
  
  spaceshipWidth = 20;
  spaceshipHeight = 60;
  
  spaceshipWingWidth = 60;
  spaceshipWingHeight = 40;
  
  spaceshipX = width/2;
  spaceshipY = height - (spaceshipHeight/2 + spaceshipMarginBottom);
  
  spaceshipSpeed = 20;
  
  initializeShootVariables();
}

void drawSpaceship() {
  //spaceshipX = mouseX;
  noStroke();
  fill(20, 80, 255);
  arc(spaceshipX, spaceshipY+15, spaceshipWingWidth, spaceshipWingHeight, PI, PI+PI);
  
  fill(10, 50, 200);
  ellipse(spaceshipX, spaceshipY, spaceshipWidth, spaceshipHeight);  
  
  drawShoots();
}

void keyPressed() {  
  switch(keyCode) {
    case LEFT:
      moveSpaceshipToTheLeft();
      break;
    case RIGHT:
      moveSpaceshipToTheRight();
      break;
    case 32:
      shoot(spaceshipX, spaceshipY, spaceshipHeight);
      break;
    default:
      break;
  }
}

void moveSpaceshipToTheRight() {
  if(spaceshipX + spaceshipWingWidth/2 + spaceshipSpeed < width)
    spaceshipX += spaceshipSpeed;
}

void moveSpaceshipToTheLeft() {
  if(spaceshipX - spaceshipWingWidth/2 - spaceshipSpeed > 0)
    spaceshipX -= spaceshipSpeed;
}
