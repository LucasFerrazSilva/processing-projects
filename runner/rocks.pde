float[][] rocks;
int rocksIndex;
int numberOfRocks;

float rockGenerationRate;
float rockSpeed;

void initializeRocksVariables() {
  numberOfRocks = 1000;
  rocksIndex = 0;
  rocks = new float[numberOfRocks][];
  rockGenerationRate = 20;
  rockSpeed = 5;
}

void drawRocks() {
  generateRock();
  
  float rockY = height - getBackgroundMarginBottom();

  rockSpeed += 0.002;
  
  stroke(50);
  fill(50);
  for(int i = 0; i < rocksIndex; i++) {
    float[] rock = rocks[i];
        
    float rockX = rock[0];
    float rockWidth = rock[1];
    float rockHeight = rock[2];
    
    if (rockX > 0 - rockWidth/2) {
      arc(rockX, rockY, rockWidth, rockHeight, PI, PI+PI, CHORD);
      
      rock[0] -= rockSpeed;
      
      if(hittedChar(rockX, rockY, rockWidth, rockHeight)) {
        gameOver(rockY, rockHeight);
        break;
      }
    }
  }
}

boolean hittedChar(float rockX, float rockY, float rockWidth, float rockHeight) {
  return (charX >= rockX - rockWidth/2 && charX <= rockX + rockWidth/2 && charY - 1 <= rockY && charY >= rockY - rockHeight/2);
}

void generateRock() {
  rockGenerationRate -= 1;
  
  if (rockGenerationRate < 0) {
    float rockWidth = random(50, 100);
    float rockHeight = random(100, 300);
        
    float[] rock = {width + rockWidth, rockWidth, rockHeight};
    
    rocks[rocksIndex++] = rock;
    
    rockGenerationRate = random(100-rockSpeed*4, 150-rockSpeed*4);
  }
}
