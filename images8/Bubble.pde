class Bubble {
  
  final static int MINIMUM_SIZE = 100;
  final static int MAXIMUM_SIZE = 200;
  final static int Y_DISPLACEMENT = -5;


  int x;
  int y;
  int size;

  
  public Bubble() {
    this.size = int(random(MINIMUM_SIZE, MAXIMUM_SIZE));
    this.y = height - size/2;
    this.x = int(random(size, width-size));
  }
  
  
  public void draw(PImage img) {
    //fill(200);
    //noStroke();
    //ellipse(x, y, size, size);
    
    if(y - size/2 > 0) {
      for(int y2 = y - size/2; y2 < y + size/2; y2++) {
        for(int x2 = x - size/2; x2 < x + size/2; x2++) {
          if(dist(x2, y2, x, y) < size/2) {
            int index = x2 + y2 * width;
            pixels[index] = img.pixels[index];
          }
        }      
      }
    }
    
    
    this.y += Y_DISPLACEMENT;
  }
  
}
