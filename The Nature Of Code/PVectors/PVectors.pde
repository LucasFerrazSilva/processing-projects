Ball ball;
Window window;
Wind wind;

void setup() {
  size(1500, 1000);
  
  ball = new Ball();
  window = new Window();
  wind = new Wind(window);
}

void draw() {
  background(20);
  
  ball.move();
  ball.bounce();
  ball.display();
  
  window.display();
  wind.display();
  
  if(ball.location.y >= window.location.y && ball.location.y <= window.location.y + Window.HEIGHT) {
    ball.applyWindForce(wind);
  }
}

void mousePressed() {
  ball.mouveGravityOn = !ball.mouveGravityOn;
}
