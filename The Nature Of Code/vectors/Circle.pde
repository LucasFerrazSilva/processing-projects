public class Circle {

  float x;
  float y;
  
  float size;
  
  float xDisplacement;
  float yDisplacement;
  
  float gravityForce;
  
  
  public Circle() {
    this.x = width/2;
    this.y = 250;
    
    this.size = 10;
    
    this.xDisplacement = random(-5,5);
    this.yDisplacement = random(-7,-5);
    
    this.gravityForce = 0.1;
  }
  
  public void draw() {
    this.drawArrow();
    this.drawGravityArrow();
    
    noStroke();
    fill(200);    
    ellipse(x, y, size, size);
  }
  
  public void move() {    
    this.x += xDisplacement;
    this.y += yDisplacement;
    
    this.yDisplacement += this.gravityForce;
  }
  
  private void drawArrow() {
    float arrowHeadX = x + xDisplacement*20;
    float arrowHeadY = y + yDisplacement*20; 
    
    stroke(255, 0, 0);
    line(x, y, arrowHeadX, arrowHeadY);
  }
  
  private void drawGravityArrow() {
    float arrowHeadX = x;
    float arrowHeadY = y + this.gravityForce * 100; 
    
    stroke(0, 255, 0);  
    line(x, y, arrowHeadX, arrowHeadY);
  }

}
