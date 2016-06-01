PImage imagen1, imagen2;
int nCols = 20;
int nFilas = 20;
float imageScale = 30;

void setup() {
  size(500, 500);
  imagen1 = loadImage("unit_1.png");
  imagen2 = loadImage("unit_2.png");
}

void draw() {
  background(255);

  for (int i=0; i<nCols; i++) {
    for (int j=0; j<nFilas; j++) { 
      image(imagen1, 30*i, 40*j, imageScale, imageScale);
      image(imagen2, 30*i, 40*j, imageScale, imageScale);
    }
  }
}