Ball[] balls;
Background background;

void setup() {
  size(800, 850);
  
  balls = new Ball[6];
  
  for(int i = 0; i < balls.length; i++) {
    balls[i] = new Ball(10 + i * 10, 50 + i * 100, 100);    
  }
  
  background = new Background();
}

void draw() {  
  background(200);
  
  for(Ball ball: balls) {  
    // Gravity force
    PVector gravityForce = new PVector(0,0.1);
    gravityForce.mult(ball.mass);
    ball.applyForce(gravityForce);
    
    // Drag force
    PVector dragForce = ball.velocity.get();
    dragForce.normalize();
    dragForce.mult(-1);
    
    float ballSpeed = ball.velocity.mag();  
    float dragResistanceFactor = background.getResistanceFactor(ball.location.y);
    dragForce.mult(dragResistanceFactor * ballSpeed * ballSpeed);
    ball.applyForce(dragForce);
    
    
    ball.update();
    ball.edges();
    ball.display();
  }
  
  background.display();
}
