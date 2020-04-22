float[][] particles;
int lastParticle;

int numberOfParticles;

int particlesGenerationRate;

float particleSize;

float particleX;
float particleY;

void initParticlesVariables() {
  numberOfParticles = 5000;
  particles = new float[numberOfParticles][];
  lastParticle = 0;
  
  particlesGenerationRate = 10;
  
  particleSize = 4;
  
  particleX = width/2;
  particleY = 0;
}

void drawParticles() {
  generateParticles();
  
  for(int i = 0; i < lastParticle; i++) {
    float[] particleInfos = particles[i];
    
    float particleX = particleInfos[0];
    float particleY = particleInfos[1];
    float particleXSpeed = particleInfos[2];
    float particleYSpeed = particleInfos[3];
    float hittedUmbrella = particleInfos[4];
    
    if(hittedUmbrella(particleX, particleY)) {
      hittedUmbrella = 1;
      particleInfos[4] = 1;
    }      
  
    if(hittedUmbrella == 0) {      
      particleX += particleXSpeed;    
      particleYSpeed += 0.1;
      particleY += particleYSpeed;
      
      fill(0, 0, 200, 200);
      stroke(0, 0);
      ellipse(particleX, particleY, particleSize, particleSize);
      
      particleInfos[0] = particleX;
      particleInfos[1] = particleY;
      particleInfos[2] = particleXSpeed;
      particleInfos[3] = particleYSpeed;
    }
  }
}

void generateParticles() {  
  for(int i = 0; i < particlesGenerationRate; i++) {
    float particleXSpeed = random(-1.5, 1.5);
    float particleYSpeed = random(-6,-4);
    float hittedUmbrella = 0;
    
    float[] particleInfos = {particleX, particleY, particleXSpeed, particleYSpeed, hittedUmbrella};
    
    particles[lastParticle++] = particleInfos;  
    
    if(lastParticle >= numberOfParticles - 1) {
      lastParticle = 0;
    }
  }
}
