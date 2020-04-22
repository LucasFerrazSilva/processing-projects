GameManager manager;


void setup() {
  size(800, 500);
  background(50);
  
  manager = new GameManager();
}

void draw() {
  manager.draw();
}

void keyPressed() {  
  manager.keyPressed(key);
}
