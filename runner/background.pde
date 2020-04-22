float backgroundMarginBottom;

float[][] clouds;
int numberOfClouds;

float[][] mountains;
int numberOfMountains;


void initBackgroundVariables() {
  backgroundMarginBottom = 40;
  
  numberOfClouds = 10;  
  clouds = new float[numberOfClouds][];
  
  numberOfMountains = 30;
  mountains = new float[numberOfMountains][];
  
  generateMountains();
  generateClouds();
}

void generateClouds() {        
  clouds[0] = new float[]{10, 20, 40};
  clouds[1] = new float[]{80, 120, 40};
  clouds[2] = new float[]{160, 130, 40};
  clouds[9] = new float[]{200, 30, 40};
  clouds[3] = new float[]{270, 190, 40};
  clouds[4] = new float[]{380, 40, 40};
  clouds[5] = new float[]{490, 90, 40};
  clouds[6] = new float[]{540, 200, 40};
  clouds[7] = new float[]{650, 140, 40};
  clouds[8] = new float[]{600, 50, 40};
}

void generateMountains() {
  for(int i = 0; i < numberOfMountains; i++) {
    float mountainWidth = random(150, 200);
    float mountainHeight = random(250, 300);
    
    float mountainX = random(0 - mountainWidth/2, width + mountainWidth/2);
    
    float[] mountain = {mountainX, mountainWidth, mountainHeight};
    mountains[i] = mountain;
  }
}

void drawBackground() {  
  drawSky();
  
  drawFloor();
}

void drawSky() {
  background(0, 100, 200);
  
  drawSun();
  
  drawMountains();
  
  drawClouds();
}

void drawSun() {
  fill(200, 200, 0);
  noStroke();
  ellipse(width - 50, 50, 50, 50);
}

void drawMountains() {
  noStroke();
  fill(0, 100, 0);
  
  for(int i = 0; i < numberOfMountains; i++) {
    float[] mountain = mountains[i];
        
    float mountainX = mountain[0];
    float mountainWidth = mountain[1];
    float mountainHeight = mountain[2];
    
    if(mountainX < 0 - mountainWidth/2) {
      mountain[0] = width + mountainWidth/2;
      mountainX = mountain[0];
    }
    
    arc(mountainX, height-backgroundMarginBottom, mountainWidth, mountainHeight, PI, PI+PI, CHORD);
    
    mountain[0]--;
  }
}

void drawClouds() {
  noStroke();
  fill(200);
  
  for(int i = 0; i < numberOfClouds; i++) {
    float[] cloud = clouds[i];
    
    float cloudX = cloud[0];
    float cloudY = cloud[1];
    float cloudSize = cloud[2];
    
    if(cloudX < 0 - cloudSize*2) {
      cloud[0] = width + cloudSize;
      cloudX = cloud[0];
    }
    
    ellipse(cloudX - cloudSize/2, cloudY, cloudSize-10, cloudSize-10);
    ellipse(cloudX, cloudY, cloudSize, cloudSize);
    ellipse(cloudX + cloudSize/2, cloudY, cloudSize-10, cloudSize-10);
    
    cloud[0]--;
  }
}

void drawFloor() {
  noStroke();
  fill(90, 60, 50);
  rect(0, height-backgroundMarginBottom, width, backgroundMarginBottom);
  
  fill(0, 200, 0);
  rect(0, height-backgroundMarginBottom, width, 10);
}

float getBackgroundMarginBottom() {
  return backgroundMarginBottom;
}
