
void setup() {
  size(600, 900);
  
  initParticlesVariables();
  initUmbrellaVariables();
}

void draw() {
  background(150);
  
  drawUmbrella();
  
  drawParticles();
}
