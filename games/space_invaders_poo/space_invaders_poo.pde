GameManager manager;

void setup() {
  size(500, 800);
  
  manager = new GameManager();
}

void draw() {
  manager.draw();
}

void keyPressed() {
  manager.keyPressed(keyCode);
}
