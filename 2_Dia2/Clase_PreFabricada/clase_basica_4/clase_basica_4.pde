ArrayList<Cara> miCara;  //declaramos un array de Caras
ArrayList<Ojos> misOjos; //declaramos un array de Ojos

int NUM_X = 7;  // numero de columnas
int NUM_Y = 7 ;  // numero de filas

void setup () {
  size(800, 800);

  miCara = new ArrayList();
  misOjos = new ArrayList();

  for (int i=0; i<NUM_X; i++) {
    for (int j=0; j<NUM_Y; j++) {
      float posX = (width/float(NUM_X-1)) * i;
      float posY = (width/float(NUM_Y-1)) * j;
      float sizeX = random(30,90);
      float sizeY = random(30,90);

      miCara.add(new Cara(posX, posY, sizeX, sizeY));
      misOjos.add(new Ojos(posX, posY, sizeX/random(5,9), sizeY/random(5,9)));
    }
  }
}

void draw() {

  background (240);
  for (int i=0; i<miCara.size(); i++) {
    miCara.get(i).display();
    misOjos.get(i).display();
  }
}