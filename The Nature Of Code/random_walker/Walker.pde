public class Walker {
  
  private static final int SIZE = 1;
  
  private float x;
  private float y;
  
  private float red;
  private float green;
  
  private float randomMargin;
  
  
  public Walker() {
    this.x = width/2;
    this.y = height/2;
    
    this.red = 255;
    this.green = random(100, 200);
    
    this.randomMargin = 3;
  }
  
  
  public void walk() {    
    x += (x > width ? random(-this.randomMargin, 0) : random(-this.randomMargin, this.randomMargin));
    
    y += (y > height ? random(-this.randomMargin, 0) : random(-this.randomMargin, this.randomMargin));
    
    this.randomMargin += 0.001;
  }
  
  public void display() {
    fill(this.red, this.green, 0, 20);
    noStroke();
    
    ellipse(x, y, SIZE, SIZE);  
  }
  
}
