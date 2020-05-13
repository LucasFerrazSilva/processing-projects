float[][] meteors;
int meteorsIndex;
float meteorSpeed;
float meteorMargin;
float generationRate;

void initializeMeteorVariables() {
  meteors = new float[1000][];
  meteorsIndex = 0;
  meteorSpeed = 2;
  meteorMargin = 40;
  generationRate = 80;
}

void drawMeteors() {
   generateMeteor();
  
  for(int i = 0; i < meteorsIndex; i++){
    float[] meteor = meteors[i];
    
    float meteorX = meteor[0];
    float meteorY = meteor[1];
    float meteorWidth = meteor[2];
    float meteorHeight = meteor[3];
    float destroyed = meteor[4];  
    
    
    if(meteorY - meteorHeight*3 >= height) {
      gameOver();
    }
    
    if(destroyed == 0) {
      fill(255, 5);
      noStroke();
      for(float multiplier = 1.5; multiplier <= 6; multiplier += 0.1) {
        arc(meteorX, meteorY, meteorWidth, meteorHeight * multiplier, PI, PI+PI); 
      }
      
      fill(200);
      stroke(200);
      ellipse(meteorX, meteorY, meteorWidth, meteorHeight);
      
      meteor[1] += meteorSpeed;
    }
  }
}

void generateMeteor(){  
  generationRate--;
  
  if (generationRate <= 0) {
    float meteorHeight = random(80, 100);
    float meteorWidth = meteorHeight - 20;
    float meteorX = random(meteorMargin, width-meteorMargin);
    float meteorY = -meteorHeight;
    float destroyed = 0;
    
    float[] meteor = {meteorX, meteorY, meteorWidth, meteorHeight, destroyed};
    
    meteors[meteorsIndex++] = meteor;
    
    generationRate = random(80, 100);
    meteorSpeed += 0.1;
  }
}

boolean hittedMeteor(float shootX, float shootY) {
  for(int i = 0; i < meteorsIndex; i++) {
    float[] meteor = meteors[i];
    
    float meteorX = meteor[0];
    float meteorY = meteor[1];
    float meteorWidth = meteor[2];
    float meteorHeight = meteor[3];
    float destroyed = meteor[4];
    
    if(destroyed == 0) {
      if(shootX >= meteorX - meteorWidth && shootX <= meteorX + meteorWidth && shootY >= meteorY - meteorHeight && shootY <= meteorY) {
        meteor[4] = 1;
        increaseScore();
        return true;
      }
    }
  }
  
  return false;
}
