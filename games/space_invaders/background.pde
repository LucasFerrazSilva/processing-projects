float[][] stars;
int starsIndex;

void initializeBackgroundVariables() {
  stars = new float[10000][4];
  starsIndex = 0;
  
  generateStars();
}

void drawBackground() {
  background(0);
  
  for(int i = 0; i < starsIndex; i++) {
    float[] star = stars[i];
    
    if(star[1] > height) {
      star[1] = 0;
    }
    
    float starX = star[0];
    float starY = star[1];
    float starSize = star[2];
    float starOpacity = star[3];
    
    fill(255, starOpacity);
    noStroke();
    ellipse(starX, starY, starSize, starSize);
    
    star[1]++;
  }
}

void generateStars() {
  for (int i = 0; i < 300; i++) {
    float starX = random(width);
    float starY = random(height);
    float starSize = random(5);
    float starOpacity = random(100, 200);
    
    float[] star = {starX, starY, starSize, starOpacity};
    
    stars[starsIndex++] = star;
  }
}
