class Mover {
  
  final static int SIZE = 20;

  PVector location;
  PVector speed;
  PVector acceleration;
  
  
  public Mover() {
    this.location = new PVector(width/2, height/2);
    this.speed = new PVector(0,0);
    this.acceleration = new PVector(0, 0);
  }
  
  
  public void update() {
    this.speed.add(this.acceleration);
    this.location.add(this.speed);
    this.acceleration.mult(0);
  } 
  
  public void edges() {
    if(this.location.x > width || this.location.x < 0)
      this.speed.x *= -1;
    
    if(this.location.y > height || this.location.y < 0)
      this.speed.y *= -1;
  }
  
  public void display() {
    stroke(100);
    fill(200);
    ellipse(this.location.x, this.location.y, SIZE, SIZE);
  }
  
  public void applyForce(PVector force) {
    this.acceleration.add(force);
  }

}
