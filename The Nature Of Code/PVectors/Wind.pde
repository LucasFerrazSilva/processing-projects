public class Wind {

  ArrayList<WindLine> windLines;
  PVector velocity;
  
  Window window;
    
  
  public Wind(Window window) {
    windLines = new ArrayList<WindLine>();
    this.velocity = new PVector(-5, 0);
    
    this.window = window;
  }
  
  public void display() {
    for(WindLine windLine: windLines) {
      windLine.display();
      windLine.move(this.velocity);
    }
    
    windLines.add(new WindLine(this.window));
  }

}
