class Color {
  
  private float red;
  private float green;
  private float blue;
  private float oppacity;
  
  
  public Color(float red, float green, float blue){
    this(red, green, blue, 255);  
  }
  
  public Color(float red, float green, float blue, float oppacity) {
    this.red = red;
    this.green = green;
    this.blue = blue;
    this.oppacity = oppacity;
  }
  
  
  public void apply() {
    fill(red, green, blue, oppacity);
  }
  
}
