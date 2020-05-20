PerlinNoise perlinNoise;
RandomCircle randomCircle;
CustomPerlinNoise customPerlinNoise;

int x = 0;

void setup(){
  size(1500, 800);
  background(0);
  
  perlinNoise = new PerlinNoise();
  randomCircle = new RandomCircle();
  customPerlinNoise = new CustomPerlinNoise();
}

void draw() {  
  stroke(0);
  line(x, 0, x, height);
  
  perlinNoise.draw();
  perlinNoise.move();
  
  randomCircle.draw();
  randomCircle.move();
  
  customPerlinNoise.draw();
  customPerlinNoise.move();
  
  x++;
  stroke(255, 0, 0);
  line(x, 0, x, height);  
  
  stroke(200);
  fill(200);
  
  line(0, height/3, width, height/3);
  line(0, 2*height/3, width, 2*height/3);
  
  textSize(32);
  textAlign(CENTER);
  text("Random", width/2, 30);
  text("Perlin Noise", width/2, height/3 + 30);
  text("Custom Perlin Noise", width/2, 2*height/3 + 30);
}
