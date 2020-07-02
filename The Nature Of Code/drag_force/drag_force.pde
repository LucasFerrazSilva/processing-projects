Ball ball;
Background background;

void setup() {
  size(800, 600);
  
  ball = new Ball(30, width/2, 50);
  background = new Background();
}

void draw() {  
  background(200);
  
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
  
  background.display();
}
