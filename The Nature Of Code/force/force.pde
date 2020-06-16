Mover m;

void setup() {
  size(640, 360);
  m = new Mover();
}

void draw() {
  background(255);
  
  PVector gravityForce = new PVector(0,0.1);
  m.applyForce(gravityForce);
  
  if(mousePressed) {
    PVector windForce = new PVector(-0.05, 0);  
    m.applyForce(windForce);
  }
  
  m.update();
  m.edges();
  m.display();
}
