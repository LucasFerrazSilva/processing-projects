Mover[] movers;
  

void setup() {
  size(640, 360);
    
  movers = new Mover[1];
  
  int moverSize = 40;
  
  for(int i = 0; i < movers.length; i++) {
    movers[i] = new Mover(moverSize);
    moverSize -= 10;
  }
}

void draw() {
  background(255);
  
  for(Mover m: movers) {
    //gravity
    PVector gravityForce = new PVector(0,0.1);
    gravityForce.mult(m.mass);
    m.applyForce(gravityForce);
    
    // wind
    PVector windForce = new PVector(0.2, 0);
    m.applyForce(windForce);
    
    // friction
    if(mousePressed) {
      PVector friction = m.speed.get();
      friction.normalize();    
      float c = -0.1;
      friction.mult(c);
      m.applyForce(friction);
    }
    
    // move m
    m.update();
    m.edges();
    m.display();
  }
}
