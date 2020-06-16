  public class Ball {
  
  final static int SIZE = 20;
  final static float AIR_RESISTANCE_FACTOR = 0.995;
  final static float WALLS_SPEED_ABSORPTION_FACTOR = 0.5;
  final static float GROUND_SPEED_ABSORPTION_FACTOR = 0.5;
  
  PVector location;
  
  PVector velocity;
  
  PVector gravityAcceleration;
  
  boolean mouveGravityOn = false;
  
  
  public Ball() {
    this.location = new PVector(width/2, height/2);
    
    this.velocity = new PVector(random(5,15), random(-15, -5));
    
    this.gravityAcceleration = new PVector(0, 0.1);
  }
  
  
  public void move() {
    if(this.location.y + SIZE/2 < height) {
      this.velocity.add(this.gravityAcceleration);
    }
    
    this.velocity.mult(AIR_RESISTANCE_FACTOR);
      
    this.location.add(this.velocity);
    
    if(this.mouveGravityOn)
      moveTowardsTheMouse();
  }
  
  public void bounce() {
    if((this.location.x + SIZE/2 >= width && this.velocity.x > 0) || (this.location.x - SIZE/2 <= 0 && this.velocity.x < 0)) {
      this.velocity.x *= -1;
      this.velocity.x *= WALLS_SPEED_ABSORPTION_FACTOR;
    }
        
    if(this.location.y - SIZE/2 <= 0 && this.velocity.y < 0) {
      this.velocity.y *= -1;
      this.velocity.y *= WALLS_SPEED_ABSORPTION_FACTOR;
    }
        
    if(this.location.y + SIZE/2 >= height && this.velocity.y > 0) {
      this.velocity.y *= -1;
      this.velocity.y *= GROUND_SPEED_ABSORPTION_FACTOR;
    }
  }
  
  public void display() {
    noStroke();
    fill(200);
    ellipse(this.location.x, this.location.y, SIZE, SIZE);
    
    printVelocity();
  }
  
  public void moveTowardsTheMouse() {
    PVector mouseAcceleration = new PVector(mouseX, mouseY);
    
    mouseAcceleration.sub(this.location);
    mouseAcceleration.div(200);
    
    this.velocity.add(mouseAcceleration);
    
    stroke(200, 0, 0);
    line(this.location.x, this.location.y, mouseX, mouseY);
  }
  
  public void applyWindForce(Wind wind) {
    this.velocity.x += wind.velocity.x / 10;
  } 
  
  private void printVelocity() {
    textSize(15);
    text("X Velocity: " + this.velocity.x, 30, 30);
    text("Y Velocity: " + this.velocity.y, 30, 60);
  }

}
