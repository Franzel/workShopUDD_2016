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
    imagenSvg = loadShape("svgExample3.svg");
  }

  void display() {
    pushMatrix();
    translate(posX, posY);
    rotate(rot);
    shapeMode(CENTER);
    shape(imagenSvg, 0, 0, sizeX, sizeY);
    popMatrix();
  }
}