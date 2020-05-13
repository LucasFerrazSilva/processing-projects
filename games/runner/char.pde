float charX;
float charY;
float charSize;

boolean charIsOnTheGround;

float jumpSpeed;

float legHeight;
float bodyHeight;
float armHeight;
float neckHeight;
float headHeight;

void initCharVariables() {
  charX = 50;
  charY = height - getBackgroundMarginBottom();
  
  jumpSpeed = 0;
  charIsOnTheGround = true;
  
  charSize = 70;
  legHeight = charSize * 0.25;
  bodyHeight = charSize * 0.25;
  armHeight = charSize * 0.25;
  neckHeight = charSize * 0.0625;
  headHeight = charSize * 0.1875;
}

void drawChar() {
  charY -= jumpSpeed;
  if(charY < height - getBackgroundMarginBottom()) {
    jumpSpeed -= 0.3;
    charIsOnTheGround = false;
  }
  else {
    jumpSpeed = 0;
    charIsOnTheGround = true;
  }
    
  drawLegs();
  drawBody();
  drawArms();
  drawHead();
}

void jump() {
  if(charIsOnTheGround) {
    jumpSpeed = 10;
    charIsOnTheGround = false;
  }
}

void drawLegs() {
  stroke(20);
  strokeWeight(3);
  noFill();
  
  line(charX - legHeight/2, charY, charX, charY - legHeight);
  line(charX + legHeight/2, charY, charX, charY - legHeight);
}

void drawBody() {
  stroke(20);
  noFill();
  
  line(charX, charY - legHeight, charX, charY - legHeight - bodyHeight);
}

void drawArms() {
  stroke(20);
  noFill();
  
  line(charX, charY - legHeight - bodyHeight, charX - armHeight/2, charY - legHeight - bodyHeight + armHeight);
  line(charX, charY - legHeight - bodyHeight, charX + armHeight/2, charY - legHeight - bodyHeight + armHeight);
}

void drawHead() {
  stroke(20);
  fill(200);
  
  line(charX, charY - legHeight - bodyHeight, charX, charY - legHeight - bodyHeight - neckHeight);
  ellipse(charX, charY - legHeight - bodyHeight - neckHeight - headHeight/2, headHeight*0.8, headHeight);
}
