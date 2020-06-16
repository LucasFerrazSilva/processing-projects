class WindLine {

  PVector location;
  
  int size;
  
  
  public WindLine(Window window) {
    this.location = new PVector(window.location.x, window.location.y + random(1, window.HEIGHT));
    
    this.size = int(random(-15, -5));
  }
  
  
  public void display() {
    stroke(200, 50);
    line(this.location.x, this.location.y, this.location.x - size, this.location.y);
  }
  
  public void move(PVector velocity) {
    this.location.add(velocity);
  }
  
}
