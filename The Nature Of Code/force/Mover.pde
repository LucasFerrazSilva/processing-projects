class Mover {
  
  int size;
  float mass;

  PVector location;
  PVector speed;
  PVector acceleration;
  
  
  public Mover(int size) {
    this.size = size;
    this.mass = size/10;
    
    this.location = new PVector(width/2, 0);
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
    fill(200, 200);
    ellipse(this.location.x, this.location.y, size, size);
  }
  
  public void applyForce(PVector force) {
    PVector f = PVector.div(force, this.mass);
    this.acceleration.add(f);
  }

}
