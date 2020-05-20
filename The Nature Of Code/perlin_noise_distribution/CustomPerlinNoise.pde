import java.util.Random;

public class CustomPerlinNoise {

  float x;
  float y;
  
  float yDisplacement;
  float displacementAdjust;  
  float displacementRange;  
  int tempoSentido;
  int tempoSentidoRangeMin;
  int tempoSentidoRangeMax;
  
  
  public CustomPerlinNoise() {
    this.x = 0;
    this.y = random(2*height/3, height);
    
    this.tempoSentidoRangeMin = 10;
    this.tempoSentidoRangeMax = 15;
    this.tempoSentido = int(random(tempoSentidoRangeMin, tempoSentidoRangeMax));
    this.displacementAdjust = 2;
    this.displacementRange = 3; 
    this.yDisplacement = random(-displacementRange, displacementRange);
  }
  
  
  public void draw() {    
    fill(255, 100, 100);
    noStroke();
    ellipse(x, y, 2, 2);
  }
  
  public void move() {
    this.x++;
    
    if(tempoSentido > 0) {
      yDisplacement += random(-displacementAdjust, displacementAdjust);
      tempoSentido--;
    } else {
      float dist = abs(y - 2*height/3 + height/6);
      
      float displacementRangeUp = (y < 2*height/3 + height/6 ? map(dist, 0, height/6, displacementRange, 0) : displacementRange);
      float displacementRangeDown = (y > 2*height/3 + height/6 ? map(dist, 0, height/6, displacementRange, 0) : displacementRange);
      
      this.yDisplacement = random(-displacementRangeUp, displacementRangeDown);
      this.tempoSentido = int(random(tempoSentidoRangeMin, tempoSentidoRangeMax));
    }
    
    this.y += yDisplacement;
    
    if(this.y < 2*height/3)
      this.y = 2*height/3;
      
    if(this.y > height)
      this.y = height;
  }

}
