float ellipse11Opacity = 0;
float ellipse12Opacity = 0;
float ellipse21Opacity = 0;
float ellipse22Opacity = 0;

void setup() {
  size(500, 500);
  background(40);
}

void draw() {
  background(40);
  
  stroke(255);
  line(width/2, 0, width/2, height);
  line(0, height/2, width, height/2);
  
  stroke(0,0);
  
  fill(255,0,0,ellipse11Opacity);
  ellipse(125,125,50,50);
  fill(0,255,0,ellipse12Opacity);
  ellipse(125,375,50,50);
  fill(0,0,255,ellipse21Opacity);
  ellipse(375,125,50,50); 
  fill(0,0,0,ellipse22Opacity);
  ellipse(375,375,50,50);  
  
  ellipse11Opacity -= 5;
  ellipse12Opacity -= 5;
  ellipse21Opacity -= 5;
  ellipse22Opacity -= 5;
  
  if (mouseX < width/2) {
    if(mouseY < height/2){
      ellipse11Opacity = 255;
    } else {
      ellipse12Opacity = 255; 
    }      
  } else if(mouseX > width/2) {
    if(mouseY < height/2){
      ellipse21Opacity = 255;
    } else {
      ellipse22Opacity = 255;
    }       
  }
}
