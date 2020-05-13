int flashlightWidth;
int flashlightHeight;
int flashlightHeadWidth;
int flashlightHeadHeight;

float lightSize;

void initFlashlightVariables() {
  flashlightWidth = 60;
  flashlightHeight = 20;
  
  flashlightHeadWidth = 20;
  flashlightHeadHeight = 30;
  
  lightSize = 30;
}

void drawFlashlight() {
  fill(60);
  noStroke();
  rect(mouseX - flashlightWidth/2, mouseY - flashlightHeight/2, flashlightWidth, flashlightHeight, 2);  
  stroke(40);
  rect(mouseX + flashlightWidth/2, mouseY - flashlightHeadHeight/2, flashlightHeadWidth, flashlightHeadHeight, 2);
  
  drawLight();
}

void drawLight() {
  float lightX = mouseX + flashlightWidth/2 + flashlightHeadWidth;
  lightSize = 30;
  
  noStroke();
  for(float oppacity = 30; oppacity > 0; oppacity -= 0.1, lightX += 1.5, lightSize += 0.2) {
    fill(255, oppacity);
    arc(lightX, mouseY, lightSize, lightSize, PI+HALF_PI, PI+HALF_PI+PI);  
  }
}
