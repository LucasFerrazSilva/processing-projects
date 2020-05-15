public class Line {
  
  int x;  
  int lineHeight;
  
  
  public Line(int x) {
    this.x = x;
    this.lineHeight = 0;
  }
  
  
  public void increaseHeight() {
    this.lineHeight++;
  }
  
  public void draw(float adjustedLineHeight) {
    float blue = map(adjustedLineHeight, 0, height, 0, 255);
    stroke(0, 0, blue);
    line(x, height - adjustedLineHeight, x, height);
  }
  
  public boolean hitTop() {
    return lineHeight >= height + 20;
  }
  
}
