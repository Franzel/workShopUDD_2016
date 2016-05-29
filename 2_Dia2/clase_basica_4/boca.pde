class Boca {
  float posX; 
  float posY;
  float sizeX;  
  float sizeY;

  Boca(float posX, float posY, float sizeX, float sizeY) {
    this.posX = posX;
    this.posY = posY;
    this.sizeX = sizeX;
    this.sizeY = sizeY;
  }

  void display() {
    //rostro
    fill(0);
    ellipse(posX, posY, sizeX, sizeY);
  }
}