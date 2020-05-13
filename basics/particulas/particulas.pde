PImage backgroundImage;

void setup() {
  size(600, 900);
  
  backgroundImage = loadImage("background_image.jpg"); 
  
  initParticlesVariables();
  initUmbrellaVariables();
}

void draw() {
  background(150);
  
  tint(150);
  image(backgroundImage, 0, 0, width, height);
  
  drawUmbrella();
  
  drawParticles();
}
