public class Racket {
  
  final static int SIZE = 60;
  
  
  public void draw() {
    noStroke();
    fill(200, 100, 100);
    ellipse(mouseX, mouseY, SIZE, SIZE);
  }
  
  
}
