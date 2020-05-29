public class Ball {
  
  final static int SIZE = 20;
  final static float AIR_RESISTANCE_FACTOR = 0.995;
  final static float SPEED_ABSORPTION_FACTOR = 0.99;
  
  PVector location;
  
  PVector velocity;
  
  PVector acceleration;
  
  
  public Ball() {
    this.location = new PVector(width/2, height/2);
    
    this.velocity = new PVector(random(5,15), random(-15, -5));
    
    this.acceleration = new PVector(0, 0.1);
  }
  
  
  public void move() {
    if(this.location.y + SIZE/2 < height)
      this.velocity.add(this.acceleration);
    
    this.velocity.mult(AIR_RESISTANCE_FACTOR);
      
    this.location.add(this.velocity);
  }
  
  public void bounce() {
    if((this.location.x + SIZE/2 >= width && this.velocity.x > 0) || (this.location.x - SIZE/2 <= 0 && this.velocity.x < 0)) {
      this.velocity.x *= -1;
      this.velocity.x *= SPEED_ABSORPTION_FACTOR;
    }
        
    if((this.location.y + SIZE/2 >= height && this.velocity.y > 0) || (this.location.y - SIZE/2 <= 0 && this.velocity.y < 0)) {
      this.velocity.y *= -1;
      this.velocity.y *= SPEED_ABSORPTION_FACTOR;
    }
  }
  
  public void display() {
    noStroke();
    fill(200);
    ellipse(this.location.x, this.location.y, SIZE, SIZE);
  }

}
