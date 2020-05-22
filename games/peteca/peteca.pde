Ball ball;
Racket racket;

float GRAVITY_FORCE = 0.1;

void setup() {
  size(1000,1000);
  
  ball = new Ball();
  racket = new Racket();
}

void draw() {
  background(0);
  
  racket.draw();
  
  if(collide())
    ball.setDisplacements();
  
  ball.move();
  ball.draw();
}

boolean collide() {
  return dist(mouseX, mouseY, ball.x, ball.y) < Racket.SIZE/2 + Ball.SIZE/2;
}

void mousePressed() {
  ball = new Ball();
}
