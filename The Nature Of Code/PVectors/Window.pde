public class Window {

  final static int WIDTH = 30;
  final static int HEIGHT = 300;
  
  PVector location;
  
  
  public Window() {
    this.location = new PVector(width - WIDTH - 10, height/2 - HEIGHT/2);
  }
  
  
  void display() {
    stroke(200, 0, 0);
    noFill();
    rect(this.location.x, this.location.y, WIDTH, HEIGHT);
  }
  
}
