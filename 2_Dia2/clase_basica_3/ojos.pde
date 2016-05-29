class Ojos {
  float posX; 
  float posY;
  float sizeX;  
  float sizeY;

  Ojos(float posX, float posY, float sizeX, float sizeY) {
    this.posX = posX;
    this.posY = posY;
    this.sizeX = sizeX;
    this.sizeY = sizeY;
  }

  void display() {
    //ojos
    fill(0);
    ellipse(posX +20, posY, sizeX, sizeY);
    ellipse(posX -20, posY, sizeX, sizeY);
  }
}