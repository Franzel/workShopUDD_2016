class Cara {
  float posX; 
  float posY;
  float sizeX;  
  float sizeY;
  color c;

  public Cara(float posX, float posY, float sizeX, float sizeY, color c) {
    this.posX = posX;
    this.posY = posY;
    this.sizeX = sizeX;
    this.sizeY = sizeY;
    this.c = c;
  }

  public void display() {
    //rostro
    fill(c);
    ellipse(posX, posY, sizeX, sizeY);
  }
}