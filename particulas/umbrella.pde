int cableHeight;
int umbrellaWidth;
int umbrellaHeight;

void initUmbrellaVariables() {
  cableHeight = 100;
  umbrellaWidth = 150;
  umbrellaHeight = 80;
}

void drawUmbrella() {
  fill(20);
  arc(mouseX, mouseY - cableHeight, umbrellaWidth, umbrellaHeight, PI, PI+PI, CHORD);
  
  stroke(20);
  line(mouseX, mouseY, mouseX, mouseY - cableHeight);
  noFill();
  arc(mouseX-30/2, mouseY, 30, 30, 0, PI, OPEN);
}

boolean hittedUmbrella(float particleX, float particleY){
  return (particleX >= mouseX - umbrellaWidth/2 && particleX <= mouseX + umbrellaWidth/2 && particleY >= mouseY - cableHeight - umbrellaHeight/2 && particleY <= mouseY - cableHeight);
}
