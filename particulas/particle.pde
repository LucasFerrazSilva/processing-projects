ArrayList<float[]> particles;
int lastParticle;

int numberOfParticles;

int particlesGenerationRate;

float particleSize;

float particleX;
float particleY;

void initParticlesVariables() {
  particles = new ArrayList<float[]>();
  
  particlesGenerationRate = 20;
  
  particleSize = 4;
  
  particleX = width/2;
  particleY = 0;
}

void drawParticles() {
  generateParticles();
  
  for (int i = particles.size() - 1; i >= 0; i--) {
    float[] particleInfos = particles.get(i);
    
    float particleX = particleInfos[0];
    float particleY = particleInfos[1];
    float particleXSpeed = particleInfos[2];
    float particleYSpeed = particleInfos[3];
    
    if(hittedUmbrella(particleX, particleY) || particleY > height) {
      particles.remove(particleInfos);
    } else {  
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
    
    particles.add(particleInfos);  
  }
}
