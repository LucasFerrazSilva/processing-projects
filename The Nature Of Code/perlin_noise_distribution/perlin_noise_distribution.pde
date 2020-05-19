float time = 0;

void setup(){
  size(600, 400);
  //frameRate(10);
}

void draw() {
  background(0);
  fill(255);
  
  float x = map(noise(time), 0, 1, 0, width);
  ellipse(x, height/2, 40, 40);
  
  time += 0.02;
}
