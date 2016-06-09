class Circular_1 {
  float posX; 
  float posY;
  float sizeX;  
  float sizeY;
  int nElementos;
  float radius;

  Circular_1(float posX, float posY, float sizeX, float sizeY, int nElementos, float radius) {

    this.posX = posX;
    this.posY = posY;
    this.sizeX = sizeX;
    this.sizeY = sizeY;
    this.nElementos = nElementos;
    this.radius = radius;
  }

  void display() {
    for (int i=0; i<nElementos; i++) {
      //rotamos usando trigonometria
      //Pero en realidad no es rotacion sino ubicar elementos alrededor de un circulo
      //es por eso que si dubujamos un rectangulo, el rectangulo no rotara
      
      float x = posX + sin(TWO_PI/nElementos*i)*radius;
      float y = posY + cos(TWO_PI/nElementos*i)*radius;
      fill(250,50,100);
      ellipse(x, y, sizeX, sizeY);
      //rect(x, y, sizeX, sizeY);   //de-comentar para ver resultado  
    }
  }
}