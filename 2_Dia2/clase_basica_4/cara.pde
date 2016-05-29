class Cara {
  float posX; 
  float posY;
  float sizeX;  
  float sizeY;

  public Cara(float posX, float posY, float sizeX, float sizeY) {
    this.posX = posX;
    this.posY = posY;
    this.sizeX = sizeX;
    this.sizeY = sizeY;
  }

  public void display() {
    //rostro
    fill(255);
    ellipse(this.posX, this.posY, sizeX, sizeY);
  }
}