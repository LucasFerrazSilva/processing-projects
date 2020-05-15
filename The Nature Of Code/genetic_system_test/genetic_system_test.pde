ArrayList<Circle> circles = new ArrayList<Circle>();

int NUMBER_OF_ELEMENTS = 10;
int X_DISPLACEMENT_RANGE = 5;
float VARIATION_RANGE = 1;

float targetX;
float targetY;

int generationCount = 0;
float distAvg = 0;

void setup() {  
  size(500, 500);
  
  targetX = width-30;
  targetY = height;
  
  circles = new ArrayList<Circle>();
  for(int i = 0; i < NUMBER_OF_ELEMENTS; i++) {
    float xDisplacement = random(-X_DISPLACEMENT_RANGE, X_DISPLACEMENT_RANGE);
    circles.add(new Circle(xDisplacement));
  }
}

void draw() {
  background(20);
  
  textSize(20);
  fill(255);
  text("Generation: " + generationCount, 10, 26);
  text("Distance avg: " + distAvg, 10, 56);
  
  drawTarget();
  
  for(Circle circle: circles) {
    circle.draw();
    circle.move();
  }
  
  if(circles.get(0).hitBottomBorder()) {
    Circle closestCircle = circles.get(0);
    float circlesDist = 0;
    
    for(Circle circle: circles) {
      float circleDist = dist(circle.x, circle.y, targetX, targetY);
      
      if(circleDist < dist(closestCircle.x, closestCircle.y, targetX, targetY)) {
        closestCircle = circle;      
      }
      
      circlesDist += circleDist;
    }
    
    circles = new ArrayList<Circle>();
    for(int i = 0; i < NUMBER_OF_ELEMENTS; i++) {
      float newXDisplacement = closestCircle.xDisplacement + random(-VARIATION_RANGE, VARIATION_RANGE);
      circles.add(new Circle(newXDisplacement));
    }
    
    if(VARIATION_RANGE > 1/10000) {
      VARIATION_RANGE -= VARIATION_RANGE * 0.2;
    }
    
    generationCount++;    
    distAvg = circlesDist/NUMBER_OF_ELEMENTS;
  }
}

void drawTarget() {
  noFill();
  stroke(200, 0, 0);
  ellipse(targetX, targetY, 20, 20);
}
