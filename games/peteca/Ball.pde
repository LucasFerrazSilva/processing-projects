public class Ball {
  
  final static int SIZE = 20;
  
  float x;
  float y;
  
  float xDisplacement;
  float yDisplacement;
  
  public Ball() {
    this.x = width/2;
    this.y = height/2;
    
    this.xDisplacement = 0;
    this.yDisplacement = 0;
  }
  
  
  public void draw() {
    noStroke();
    fill(200);
    ellipse(x, y, SIZE, SIZE);
  }
  
  public void move() {
    this.x += xDisplacement;
    this.y += yDisplacement;
    
    if(this.yDisplacement != 0)
      this.yDisplacement += GRAVITY_FORCE;
  }
  
  public void setDisplacements() {
    float mouseXDisplacement = abs(mouseX - pmouseX) + 0.2;
    float mouseYDisplacement = abs(mouseY - pmouseY) + 0.2;
    
    println(mouseXDisplacement);
    println(mouseYDisplacement);
    println();
    
    this.xDisplacement = xDisplacement + (this.x - mouseX) * mouseXDisplacement/20;
    this.yDisplacement = -yDisplacement/2 + (this.y - mouseY) * mouseYDisplacement/20;
  }
  
}
