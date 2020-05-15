ArrayList<Line> lines;

boolean stop = false;

void setup() {
  size(1000, 1000);
  
  lines = new ArrayList<Line>();
  
  for(int i = 0; i < width; i++) {
    lines.add(new Line(i));
  }
}

void draw() {
  if(!stop) {
    for(int i = 0; i < 500; i++) {
      float r1 = random(1);
      float r2 = random(1);
      
      float y = r1 * r1;
      
      if(r2 < y) {
        Line line = lines.get(int(r1*width));
        line.increaseHeight();
        
        stop = line.hitTop();
      }
    }
      
    //for(Line line: lines) {
    //  line.draw();
    //}
    for(int i = 0; i < lines.size(); i++) {
      int previousHeight = 0;
      int lineHeight = lines.get(i).lineHeight;
      int nextHeight = lineHeight;
      
      if(i > 0)
        previousHeight = lines.get(i-1).lineHeight;
      
      if(i < lines.size()-1)
        nextHeight = lines.get(i+1).lineHeight;
        
      float adjustedLineHeight = (previousHeight + lineHeight + nextHeight)/3;
      
      lines.get(i).draw(adjustedLineHeight);
    }
  }
}
