class Circular_2 {
  float posX; 
  float posY;
  float sizeX;  
  float sizeY;
  int nElementos;
  float radius;

  Circular_2(float posX, float posY, float sizeX, float sizeY, int nElementos, float radius) {

    this.posX = posX;
    this.posY = posY;
    this.sizeX = sizeX;
    this.sizeY = sizeY;
    this.nElementos = nElementos;
    this.radius = radius;
  }

  void display() {
    println(nElementos);
    for (int i=0; i<nElementos; i++) {
     
      //rotacion via rotate()
      pushMatrix();
      translate(posX,posY);
      rotate(TWO_PI/nElementos*i);
      rectMode(CENTER);
      fill(0);
      rect(radius,0,20,5);
      rectMode(CORNER);
      popMatrix();
    }
  }
}