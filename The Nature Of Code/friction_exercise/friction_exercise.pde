// Criar um projeto com um chão com diferentes materiais (lama, cimento, etc.), onde cada um tem um "cociente de fricção" diferente. Fazer um objeto se locomover pelo chão e observar a variação de velocidade quando ele passa por cada material

Ground ground;
Ball ball;

float xStart;
float yStart;

void setup() {
  size(1500, 800);
  
  xStart = 0;
  yStart = 2 * height / 3;
  
  ground = new Ground(xStart, yStart);
  ball = new Ball(60, xStart, yStart);
}

void draw() {
  background(200);
  
  // apply wind force
  PVector windForce = new PVector(0.3, 0);
  ball.applyForce(windForce);
  
  //apply friction force
  PVector friction = ball.velocity.get();
  friction.normalize();
  float frictionFactor = ground.getFrictionFactor(ball.location.x);
  friction.mult(frictionFactor);
  ball.applyForce(friction);
  
  ground.display();
  
  ball.update();
  ball.edges();
  ball.display();
}
