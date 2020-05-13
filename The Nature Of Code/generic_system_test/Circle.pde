public class Circle {
  
  final static float Y_DISPLACEMENT = 5;
  final static int SIZE = 10;
  
  float x;
  float y;
  
  float xDisplacement;
  
  private color cor;
  
  
  public Circle(float xDisplacement) {
    this.xDisplacement = xDisplacement;
    
    this.cor = color(random(255), random(255), random(255));
    
    this.x = width/2;
    this.y = height/2;
  }
  
  
  public void move() {
    this.x += xDisplacement;
    this.y += Y_DISPLACEMENT;
  }
  
  public void draw() {
    fill(this.cor, 100);
    stroke(this.cor);
    
    ellipse(this.x, this.y, SIZE, SIZE);
  }
  
  public boolean hitBottomBorder() {
    return y >= height;
  }
  
}
