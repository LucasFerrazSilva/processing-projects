import java.util.Random;

Random gen = new Random();

int size = 20;

int count = 0;

void setup() {
  size(1000, 500);
  background(20);
}

void draw() {
  if(count < 10000) {
    float x = (float) gen.nextGaussian();
    
    x *= 100;
    x += width/2;  
    
    fill(200, 10);
    noStroke();
    ellipse(x, height/2, size, size);
    
    count++;
  }
}
