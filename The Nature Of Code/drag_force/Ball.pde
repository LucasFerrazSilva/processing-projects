class Ball {
  
   int size;
   float mass;
   
   PVector location;
   PVector velocity;
   PVector acceleration;
   
   
   public Ball(int size, float xStart, float yStart) {
     this.size = size;
     this.mass = this.size/10;
     
     this.location = new PVector(xStart + this.size/2, yStart - this.size/2);
     this.velocity = new PVector(0,0);
     this.acceleration = new PVector(0,0);
   }
   
   
   public void update() {
     this.velocity.add(this.acceleration);
     this.location.add(this.velocity);
     this.acceleration = new PVector(0,0);
   }
   
   public void edges() {
    if(this.location.x > width || this.location.x < 0)
      this.velocity.x *= -1;
    
    if(this.location.y > height || this.location.y < 0)
      this.velocity.y *= -1;
   }
   
   public void display() {
     stroke(20);
     fill(100);
     ellipse(this.location.x, this.location.y, size, size);
   }
   
   public void applyForce(PVector force) {
     PVector f = PVector.div(force, this.mass);
     this.acceleration.add(f);
   }
  
}
