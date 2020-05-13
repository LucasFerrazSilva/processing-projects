float circleX;
float circleY;
float circleWidth;
float circleHeight;
float circleSpeed;

void setup() {
  size(500, 1000);
  
  circleX = width/2;
  circleY = 0;
  circleWidth = 60;
  circleHeight = 80;
  circleSpeed = 5;
}

void draw() {
  background(50);
  
  circleY += circleSpeed;
    
  fill(255, 255, 0, 50);
  noStroke();
  arc(circleX, circleY, circleWidth, circleHeight*1.5, PI, PI+PI);
    
  fill(255, 255, 0, 50);
  noStroke();
  arc(circleX, circleY, circleWidth, circleHeight*2, PI, PI+PI);
    
  fill(255, 255, 0, 50);
  noStroke();
  arc(circleX, circleY, circleWidth, circleHeight*2.5, PI, PI+PI);
    
  fill(255, 255, 0, 50);
  noStroke();
  arc(circleX, circleY, circleWidth, circleHeight*3, PI, PI+PI);
  
  fill(255, 0, 0);
  stroke(255, 255, 0);
  ellipse(circleX, circleY, circleWidth, circleHeight);
}
