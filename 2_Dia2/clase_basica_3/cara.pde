class Cara {
  float posX; 
  float posY;
  float sizeX;  
  float sizeY;

  Cara(float posX, float posY, float sizeX, float sizeY) {
    this.posX = posX;
    this.posY = posY;
    this.sizeX = sizeX;
    this.sizeY = sizeY;
  }

  void display() {
    //rostro
    fill(255);
    ellipse(posX, posY, sizeX, sizeY);
  }
}