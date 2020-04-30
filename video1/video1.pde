import processing.video.*;

Movie movie;

void setup() {
  size(900, 500);
  
  movie = new Movie(this, "movie.mkv");
  movie.play();
  movie.speed(4);
}

void movieEvent(Movie movie) {
  movie.read();
}

void draw() {
  image(movie, 0, 0, width, height);
}
