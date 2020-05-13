import processing.video.*;

int x = 0;

Movie movie;

void setup() {
  size(800, 600);
  
  movie = new Movie(this, "me.mkv");
  movie.loop();
}

void movieEvent(Movie movie) {
  movie.read();
  
  //loadPixels();
  
  //for(int y = 0; y < height; y++) {
  //  pixels[x + y * width] = movie.pixels[movie.width/2 + y * movie.width];
  //}
  
  //updatePixels();
  
}

void draw() {
  if(movie.width > 0) {
    int w = movie.width;
    int h = movie.height;
    copy(movie, w/2, 0, 1, h, x, 0, 1, height);
    
    x++;
    
    if(x >= width)
      x = 0;
  }
}
