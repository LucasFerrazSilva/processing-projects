import processing.video.*;

Movie movie;

char option = '1';

void setup() {
  size(1920, 1080);
  
  movie = new Movie(this, "me.mkv");
  movie.play();
}

void movieEvent(Movie movie) {
  movie.read();
}

void keyPressed() {
  option = key;
}

void draw() {
  //image(movie, 0, 0, width, height);
  
  if(movie.width > 0) {
    loadPixels();
    
    for(int y = 0; y < height; y++) {
      for(int x = 0; x < width; x++) {
        int index = x + y * width;
        color c = movie.pixels[index];
        
        float r = red(c);
        float g = green(c);
        float b = blue(c);
        
        switch(option) {
          case '1':
            pixels[index] = color(b, r, g);
            break;
          case '2':
            pixels[index] = color(b, g, r);
            break;
          case '3':
            pixels[index] = color(g, b, r);
            break;
          default: 
            pixels[index] = color(r, g, b);
            break;
        }
      }
    }
  }
  
  updatePixels();
}
