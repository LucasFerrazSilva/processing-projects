Ball ball;

void setup() {
  size(1500, 1000);
  
  ball = new Ball();
}

void draw() {
  background(20);
  
  ball.move();
  ball.bounce();
  ball.display();
}

void mousePressed() {
  ball.mouveGravityOn = !ball.mouveGravityOn;
}
