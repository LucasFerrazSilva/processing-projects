ArrayList<Walker> walkers = new ArrayList<Walker>();

void setup() {
  size(1000, 1000);
  background(0);

  for(int i = 0; i < 10000; i++) {
    walkers.add(new Walker());
  }
}

void draw() {
  for(Walker walker: walkers) {
    walker.walk();
    walker.display();
  }
}
