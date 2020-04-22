GameManager manager;

void setup() {  
  size(500, 500);
    
  manager = new GameManager();
}

void draw() {
  manager.draw();
}

void mousePressed() {
  manager.mousePressed();
}
