float circleX;
float circleY;
int displacement;
int sign;
boolean displacementChanged;

void setup() {
  size(800,800);
  background(50);
  
  displacement = 390;
  circleX = width/2;
  circleY = 0;  
  sign = 1;
  displacementChanged = false;
}

void draw() {
  if (circleY < height){
    setSign();  
    changeDisplacement();
    
    circleX += calculateXDisplacement();     
    circleY += calculateYDisplacement();
    
    drawEllipse();
  }
}

void changeDisplacement() {
  if(!displacementChanged && circleX > 395 && circleX < 405) {
      displacement -= 53.5;
      displacementChanged = true;
  }
}

void setSign() {
  float xDisplacement = calculateXDisplacement();
  
  if((circleX + xDisplacement >= (displacement + width/2)) || (circleX <= width/2 - displacement)) {
    sign *= -1; 
    displacementChanged = false;
  } 
}

float getShortestDistance() {
  float leftMargin = width/2 - displacement;
  float rightMargin = width/2 + displacement;
  
  return (circleX - leftMargin < rightMargin - circleX ? circleX - leftMargin : rightMargin - circleX);
}

float calculateXDisplacement() {
  float shortestDistance = getShortestDistance();
  
  return sign * (0.5 + shortestDistance/20);
}

float calculateYDisplacement() {
  float shortestDistance = getShortestDistance();
    
  return 0.5 + 10/(shortestDistance + 5);
}

void drawEllipse() {
  float red = circleY/2;
  float green = circleX/2;
  float blue = circleX/4 - circleY/4;  
  
  fill(red, green, blue, 200);
  stroke(red, green, blue, 200);
  ellipse(circleX, circleY, 10*calculateXDisplacement(), 10);
}
