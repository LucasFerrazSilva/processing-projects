public class RandomCircle {
  
  float x;
  float y;
  
  
  public RandomCircle () {
    x = 0;
    y = random(0, height/3);
  }
  
  public void draw() {      
    fill(100, 255, 100);
    noStroke();
    ellipse(x, y, 2, 2);
  }
  
  public void move() {
    x++;
    y = random(0, height/3);
  }
  
}
