class MeteorsManager {
  
  final static int MAX_NUMBER_OF_METEORS = 1000;
  final static int MINIMUM_GENERATION_RATE = 100;
  final static int MAXIMUM_GENERATION_RATE = 120;
  final static float ACCELERATION_RATE = 0.1;
  
  private ArrayList<Meteor> meteors;
  private float generationRate;
  private float speedY;
  
  
  public MeteorsManager() {
    this.meteors = new ArrayList<Meteor>();
    this.generationRate = random(MINIMUM_GENERATION_RATE, MAXIMUM_GENERATION_RATE);
    this.speedY = Meteor.BASE_SPEEDY;
  }
    
  
  public void draw() throws GameOverException {
    createMeteor();
    
    for(Meteor meteor: meteors) {
      meteor.draw();
      meteor.move();
    }
  }
  
  public void createMeteor() {
    if(this.generationRate <= 0) {
      this.speedY += ACCELERATION_RATE;
      this.meteors.add(new Meteor(this.speedY));
    
      this.generationRate = random(MINIMUM_GENERATION_RATE, MAXIMUM_GENERATION_RATE);
    } else {
      this.generationRate--;
    }
  }
  
  public ArrayList<Meteor> getMeteors() {
    return this.meteors;
  }
  
}
