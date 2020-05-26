public class Ball {
  
  final static int SIZE = 60;
  
  PVector location;
  
  PVector velocity;
  
  
  public Ball() {
    this.location = new PVector(width/2, height/2);
    
    this.velocity = new PVector(2.5, -2);
  }
  
  
  public void move() {
    this.location.add(this.velocity);
  }
  
  public void bounce() {
    if(this.location.x + SIZE/2 >= width || this.location.x - SIZE/2 <= 0)
      this.velocity.x *= -1;
        
    if(this.location.y + SIZE/2 >= height || this.location.y - SIZE/2 <= 0)
      this.velocity.y *= -1;
  }
  
  public void display() {
    noStroke();
    fill(200);
    ellipse(this.location.x, this.location.y, SIZE, SIZE);
  }

}
