class CollisionSeeker {

  private Spaceship spaceship;
  private MeteorsManager meteorsManager;
  private Score score;
  
  
  public CollisionSeeker(Spaceship spaceship, MeteorsManager meteorsManager, Score score) {
    this.spaceship = spaceship;
    this.meteorsManager = meteorsManager;
    this.score = score;
  }
  
  
  public void seek() {
    ArrayList<Shot> shots = this.spaceship.getShots();    
    ArrayList<Meteor> meteors = this.meteorsManager.getMeteors();
    
    for(int i = shots.size() - 1; i >= 0; i--) {
      Shot shot = shots.get(i);
      
      for(int j = meteors.size() - 1; j >= 0; j--) {
        Meteor meteor = meteors.get(j);
        
        if(meteor.hits(shot)) {
          meteors.remove(meteor);
          shots.remove(shot);
          this.score.increase();
        }
      }
    }
  }

}
