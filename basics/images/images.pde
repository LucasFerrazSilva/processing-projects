PImage img;

void setup() {
  size(1000, 800);
  this.img = loadImage("hedgehog.png");
}

void draw() {
  background(20);
  tint(mouseX/8 + mouseY/8, mouseX/4, mouseY/4, mouseX/8 + mouseY/8);
  imageMode(CENTER);
  image(img, mouseX, mouseY, 300, 200);
}
