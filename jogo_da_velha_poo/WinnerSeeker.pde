class WinnerSeeker {
  
  Field[][] fields;
  
  
  public WinnerSeeker(Field[][] fields) {
    this.fields = fields;
  }
  
  
  public void seek() throws GameOverException {
    for(int i = 0; i < GameManager.NUMBER_OF_FIELDS; i++) {
      for(int j = 0; j < GameManager.NUMBER_OF_FIELDS; j++) {
        lookForWinnerInTheRow(i, j);
        lookForWinnerInTheColumn(i, j);
        lookForWinnerInTheDiagonalForward(i, j);
        lookForWinnerInTheDiagonalBackward(i, j);
      }
    }
  }
  
  private void lookForWinnerInTheRow(int i, int j) throws GameOverException {
    if(j > 0 || fields[i][j].isEmpty())
      return;
    
    Shape shape = fields[i][j].getShape();
    
    for(int x = j + 1; x < GameManager.NUMBER_OF_FIELDS; x++) {
      if(fields[i][x].isEmpty() || !shape.equals(fields[i][x].getShape()))
        return;
    }
    
    for(int x = j; x < GameManager.NUMBER_OF_FIELDS; x++) {
      fields[i][x].markAsWinner();
    }
    
    throw new GameOverException();
  }
  
  private void lookForWinnerInTheColumn(int i, int j) throws GameOverException {
    if(i > 0 || fields[i][j].isEmpty())
      return;
    
    Shape shape = fields[i][j].getShape();
    
    for(int x = i + 1; x < GameManager.NUMBER_OF_FIELDS; x++) {
      if(fields[x][j].isEmpty() || !shape.equals(fields[x][j].getShape()))
        return;
    }
    
    for(int x = i; x < GameManager.NUMBER_OF_FIELDS; x++) {
      fields[x][j].markAsWinner();
    }
    
    throw new GameOverException();
  }
  
  private void lookForWinnerInTheDiagonalForward(int i, int j) throws GameOverException {
    if(i > 0 || j > 0 || fields[i][j].isEmpty())
      return;
    
    Shape shape = fields[i][j].getShape();
    
    for(int x = i + 1; x < GameManager.NUMBER_OF_FIELDS; x++) {
      if(fields[x][x].isEmpty() || !shape.equals(fields[x][x].getShape()))
        return;
    }
    
    for(int x = j; x < GameManager.NUMBER_OF_FIELDS; x++) {
      fields[x][x].markAsWinner();
    }
    
    throw new GameOverException();
  }
  
  private void lookForWinnerInTheDiagonalBackward(int i, int j) throws GameOverException {
    if(i > 0 || j < GameManager.NUMBER_OF_FIELDS - 1 || fields[i][j].isEmpty())
      return;
    
    Shape shape = fields[i][j].getShape();
    
    for(int x = i + 1; x < GameManager.NUMBER_OF_FIELDS; x++) {
      if(fields[i + x][j - x].isEmpty() || !shape.equals(fields[i + x][j - x].getShape()))
        return;
    }
    
    for(int x = i; x < GameManager.NUMBER_OF_FIELDS; x++) {
      fields[i + x][j - x].markAsWinner();
    }
    
    throw new GameOverException();
  }
  
}
