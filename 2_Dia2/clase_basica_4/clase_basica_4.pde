ArrayList<Cara> miCara;  //declaramos un array de Faces
ArrayList<Ojos> misOjos; //declaramos un array de Ojos
ArrayList<Boca> miBoca;  //declaramos un array de Bocas

int NUM_X = 7;  // numero de columnas
int NUM_Y = 7 ;  // numero de filas

void setup () {
  size(800, 800);

  miCara = new ArrayList();
  misOjos = new ArrayList();
  miBoca = new ArrayList();


  for (int i=0; i<NUM_X; i++) {
    for (int j=0; j<NUM_Y; j++) {
      float posX = (width/float(NUM_X-1)) * i;
      float posY = (width/float(NUM_Y-1)) * j;
      float sizeX = random(30,90);
      float sizeY = random(30,90);

      miCara.add(new Cara(posX, posY, sizeX, sizeY));
      misOjos.add(new Ojos(posX, posY, sizeX/6, sizeY/6));
      miBoca.add(new Boca(posX, posY+sizeX/4, sizeX/10, sizeY/10));
    }
  }
}

void draw() {

  background (240);
  for (int i=0; i<miCara.size(); i++) {
    miCara.get(i).display();
    misOjos.get(i).display();
    miBoca.get(i).display();
  }
}