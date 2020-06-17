Mover m;
Mover m2;

void setup() {
  size(640, 360);
  m = new Mover(20);
  m2 = new Mover(40);
}

void draw() {
  background(255);
  
  PVector gravityForce = new PVector(0,0.1);
  m.applyForce(gravityForce);
  m2.applyForce(gravityForce);
  
  if(mousePressed) {
    PVector windForce = new PVector(-0.05, 0);  
    m.applyForce(windForce);
    m2.applyForce(windForce);
  }
  
  m.update();
  m.edges();
  m.display();
  
  m2.update();
  m2.edges();
  m2.display();
}
