class MeteorsManager {
  
  final static int MAX_NUMBER_OF_METEORS = 1000;
  final static int MINIMUM_GENERATION_RATE = 100;
  final static int MAXIMUM_GENERATION_RATE = 120;
  final static float ACCELERATION_RATE = 0.1;
  
  private Meteor[] meteors;
  private int meteorsIndex;
  private float generationRate;
  private float speedY;
  
  
  public MeteorsManager() {
    this.meteors = new Meteor[MAX_NUMBER_OF_METEORS];
    this.meteorsIndex = 0;
    this.generationRate = random(MINIMUM_GENERATION_RATE, MAXIMUM_GENERATION_RATE);
    this.speedY = Meteor.BASE_SPEEDY;
  }
    
  
  public void draw() throws GameOverException {
    createMeteor();
    
    for(int i = 0; i < meteorsIndex; i++) {
      Meteor meteor = this.meteors[i];
      
      if(!meteor.wasDestroyed()) {
        meteor.draw();
        meteor.move();
      }
    }
  }
  
  public void createMeteor() {
    if(this.generationRate <= 0) {
      this.speedY += ACCELERATION_RATE;
      this.meteors[meteorsIndex++] = new Meteor(this.speedY);
    
      this.generationRate = random(MINIMUM_GENERATION_RATE, MAXIMUM_GENERATION_RATE);
    } else {
      this.generationRate--;
    }
  }
  
  public Meteor[] getMeteors() {
    return this.meteors;
  }
  
  public int getMeteorsIndex() {
    return this.meteorsIndex;
  }
  
}
