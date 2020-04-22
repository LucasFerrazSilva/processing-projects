class GameManager {
  
  final static int NUMBER_OF_FIELDS = 3;

  Field[][] fields;  
  Shape shape;
  boolean gameOver;
  WinnerSeeker winnerSeeker;


  public GameManager() {
    createFields();
    
    this.gameOver = false;
    this.shape = new Cross();
    this.winnerSeeker = new WinnerSeeker(fields);
  }


  public void draw() { 
    if(!gameOver) {
      background(220);
      drawFields();
    }
  }

  private void createFields() {
    fields = new Field[NUMBER_OF_FIELDS][NUMBER_OF_FIELDS];

    for (int i = 0; i < NUMBER_OF_FIELDS; i++) {
      for (int j = 0; j < NUMBER_OF_FIELDS; j++) {
        Position position = new Position(j * width/NUMBER_OF_FIELDS, i * height/NUMBER_OF_FIELDS);
        
        fields[i][j] = new Field(position);
      }
    }
  }

  private void drawFields() {    
    for (int i = 0; i < NUMBER_OF_FIELDS; i++) {
      for (int j = 0; j < NUMBER_OF_FIELDS; j++) {
        fields[i][j].draw();
      }
    }
  }

  public void mousePressed() {
    int i = mouseY / (height/NUMBER_OF_FIELDS);
    int j = mouseX / (width/NUMBER_OF_FIELDS);
    
    if(fields[i][j].isEmpty()) {
      fields[i][j].setShape(shape);   
      this.shape = this.shape.toggle();
      
      try {
        winnerSeeker.seek();
      } catch (GameOverException e) {
        this.gameOver = true;
      }
    }
  }
  
}
