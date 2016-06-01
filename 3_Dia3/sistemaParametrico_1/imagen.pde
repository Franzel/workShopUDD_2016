class Imagen {
  float posX; 
  float posY;
  float sizeX;  
  float sizeY;
  float rot;
  PShape imagenSvg;

  Imagen(float posX, float posY, float sizeX, float sizeY, float rotacion) {
    this.posX = posX;
    this.posY = posY;
    this.sizeX = sizeX;
    this.sizeY = sizeY;
    this.rot = radians(rotacion);
    imagenSvg = loadShape("svgExample2.svg");
  }

  void display() {
    pushMatrix();
    translate(posX, posY);
    rotate(rot);
    rectMode(CENTER);
    shape(imagenSvg, 0, 0, sizeX, sizeY);
    rectMode(CORNER);
    popMatrix();
  }
}