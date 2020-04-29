PImage img;
ArrayList<Bubble> bubbles;
int bubbleGenerationRate = 10;

void setup() {
  size(2048, 1365);
  
  img = loadImage("1.jpg");
  
  this.bubbles = new ArrayList<Bubble>();
}

void draw() {
  tint(20);
  image(img, 0, 0, width, height);
  
  generateBubble();
  
  loadPixels();
  img.loadPixels();
  
  for(Bubble bubble: bubbles) {
    bubble.draw(img);
  }
  
  updatePixels();
}

void generateBubble() {
  if(bubbleGenerationRate <= 0) {
    bubbles.add(new Bubble());
    bubbleGenerationRate = 30;
  } else {
    bubbleGenerationRate--;
  }
}
