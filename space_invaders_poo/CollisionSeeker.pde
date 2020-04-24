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
    Shot[] shots = this.spaceship.getShots();
    int shotsFired = this.spaceship.getShotsFired();
    
    Meteor[] meteors = this.meteorsManager.getMeteors();
    int meteorsIndex = this.meteorsManager.getMeteorsIndex();
    
    for(int i = 0; i < shotsFired; i++) {
      Shot shot = shots[i];
      
      if(!shot.wasHit()) {
        for(int j = 0; j < meteorsIndex; j++) {
          Meteor meteor = meteors[j];
          
          if(!meteor.wasDestroyed()) {
            if(meteor.hits(shot)) {
              meteor.setAsDestroyed();
              shot.setAsHit();
              this.score.increase();
            }
          }
        }
      }
    }
  }

}
