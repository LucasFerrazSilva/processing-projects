int[][] fields = new int[9][];


void initFields() {
  for(int i = 0; i < 9; i++){
    int[] field = {i, 0};
    fields[i] = field;
  }
}

void updateField(int fieldNumber, int symbol) {
  fields[fieldNumber][1] = symbol;
}

boolean fieldCanBeChanged(int fieldNumber) {
  return fields[fieldNumber][1] == 0;
}

void drawFields() {
  for(int i = 0; i < 9; i++) {
    int[] field = fields[i];
    
    int fieldNumber = field[0];
    int filledBy = field[1];
    
    switch(filledBy) {
      case 1: //cross
        drawCross(fieldNumber);
        break;
      case 2: //circle
        drawCircle(fieldNumber);
        break;
       default:
         break;
    }
  }
}

int getFieldNumber(float mouseX, float mouseY) {
  int fieldNumber = 0;
  
  if(mouseX <= width/3) {
    fieldNumber += 0;    
  } else if (mouseX <= 2*width/3) {
    fieldNumber += 1;
  } else {
    fieldNumber += 2;
  }
  
  if(mouseY <= height/3) {
    fieldNumber += 0;    
  } else if (mouseY <= 2*height/3) {
    fieldNumber += 3;
  } else {
    fieldNumber += 6;
  }
  
  return fieldNumber;
}

int[] getFieldPosition(int fieldNumber) {
  switch(fieldNumber) {
    case 0:
      return new int[]{0, 0};
    case 1:
      return new int[]{width/3, 0};
    case 2:
      return new int[]{2*width/3, 0};
    case 3:
      return new int[]{0, height/3};
    case 4:
      return new int[]{width/3, height/3};
    case 5:
      return new int[]{2*width/3, height/3};
    case 6:
      return new int[]{0, 2*height/3};
    case 7:
      return new int[]{width/3, 2*height/3};
    case 8:
      return new int[]{2*width/3, 2*height/3};
    default:
      return null;
  }
}
