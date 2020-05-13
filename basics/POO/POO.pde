Ball[] balls;
int ballsIndex;
int numberOfBalls;

void setup() {
  size(700,600);
  
  numberOfBalls = 20;
  balls = new Ball[numberOfBalls];
  ballsIndex = 0;
}

void draw() {
  background(220);
  
  generateBall();
  
  for(int i = 0; i < ballsIndex; i++) {
    Ball ball = balls[i];
    
    ball.move();
    ball.checkEdges();
    ball.draw();
  }
}

void generateBall() {
  if(ballsIndex < numberOfBalls - 1) {
    float size = random(40, 80);
    
    Position position = new Position(random(size/2, width - size/2), random(size/2, height - size/2));
    
    Speed speed = new Speed(random(-5, 5), random(-5, 5));
    
    Color c = new Color(random(255), random(255), random(255), 100);
    
    balls[ballsIndex++] = new Ball(size, position, speed, c);
  }
}
