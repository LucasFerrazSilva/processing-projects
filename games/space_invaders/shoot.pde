float shootSize;
float[][] shoots;
int shootsIndex;
float shootSpeed;

void initializeShootVariables(){
  shoots = new float[1000][];
  shootsIndex = 0;
  shootSize = 10;
  shootSpeed = 10;
}

void drawShoots() {
  int red = 255;
  int green = 255;
  int blue = 0;
  
  stroke(red, green, blue);
  fill(red, green, blue);
  
  for(int i = 0; i < shootsIndex; i++) {
    float[] shoot = shoots[i];
    
    float shootX = shoot[0];
    float shootY = shoot[1];
    float hit = shoot[2];
    
    if(hit == 0 && shootY > 0) {
      
      if(hittedMeteor(shootX, shootY)){
        shoot[2] = 1;
      } else {
        ellipse(shootX, shootY, shootSize/2, shootSize);
        
        shoot[1] -= shootSpeed;
      }
    }
  }
}

void shoot(float spaceshipX, float spaceshipY, float spaceshipHeight) {  
  float shootX = spaceshipX;
  float shootY = spaceshipY - spaceshipHeight/2 - 2;
  float hit = 0;
  
  float[] shoot = {shootX, shootY, hit}; 
  
  shoots[shootsIndex++] = shoot;
}
