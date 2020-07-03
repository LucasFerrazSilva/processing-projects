class Background {
  
  
  float airResistanceFactor = 0.005;
  float airYStart = 0;
  float airYSize = 2*height/3;
  
  float oilResistanceFactor = 0.2;
  float oilYStart = airYStart + airYSize;
  float oilYSize = 60;
  
  float waterResistanceFactor = 0.05;
  float waterYStart = oilYStart + oilYSize;
  float waterYSize = height - waterYStart;
  
  
  void display() {
    //display air
    noStroke();
    fill(250, 50);
    rect(0, airYStart, width, airYSize);
    
    //display oil
    noStroke();
    fill(139,69,19,200);
    rect(0, oilYStart, width, oilYSize);
    
    //display water
    noStroke();
    fill(0, 0, 250, 200);
    rect(0, waterYStart, width, waterYSize);
  }
  
  float getResistanceFactor(float y) {
    if(y >= airYStart && y < oilYStart)
      return airResistanceFactor;
    else if(y >= oilYStart && y < waterYStart)
      return oilResistanceFactor;
    else 
      return waterResistanceFactor;
  }
  
}
