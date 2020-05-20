public class PerlinNoise {
  
  float time;
  float x;
  float y;
  
  
  public PerlinNoise() {
    this.time = 0;
    this.x = 0;
    this.y = map(noise(time), 0, 1, height/3, 2*height/3);
  }
  
  
  public void draw() {      
    fill(100, 100, 255);
    noStroke();
    ellipse(x, y, 2, 2);
  }
  
  public void move() {
    time += 0.02;
    x++;
    y = map(noise(time), 0, 1, height/3, 2*height/3);
  }
  
}
