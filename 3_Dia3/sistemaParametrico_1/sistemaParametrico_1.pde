import processing.pdf.*;

ArrayList<Cara> miCara;  //declaramos un array de Faces
ArrayList<Ojos> misOjos; //declaramos un array de Ojos
ArrayList<Boca> miBoca;  //declaramos un array de Bocas
ArrayList<Circular_1> miCircular_1;
ArrayList<Circular_2> miCircular_2;
ArrayList<Imagen> miImagen_1;


int NUM_X = 15;  // numero de columnas
int NUM_Y = 15 ;  // numero de filas

void setup () {
  //size(800, 800, PDF, "poster.pdf");
  size(800, 800);

  miCara = new ArrayList();
  misOjos = new ArrayList();
  miBoca = new ArrayList();
  miCircular_1 = new ArrayList();
  miCircular_2 = new ArrayList();
  miImagen_1 = new ArrayList();



  for (int i=0; i<NUM_X; i++) {
    for (int j=0; j<NUM_Y; j++) {
      float posX = (width/float(NUM_X-1)) * i;
      float posY = (width/float(NUM_Y-1)) * j;
      float sizeX = random (2, width/NUM_X);
      float sizeY = random (2, width/NUM_X);

      miCara.add(new Cara(posX, posY, sizeX, sizeX));
      misOjos.add(new Ojos(posX, posY, sizeX/random(5, 9), sizeY/random(5, 9)));
      miBoca.add(new Boca(posX, posY, sizeX/4, sizeX/4));

      float circleSize= random(2, 15);
      float imageSize = random(30, 60);

      miCircular_1.add(new Circular_1(posX, posY, circleSize, circleSize, int(random(2, 10)), random(10, sizeX/2)));
      miCircular_2.add(new Circular_2(posX, posY, 10, 10, int(random(3, 12)), random(10, sizeX/2)));
      miImagen_1.add(new Imagen(posX, posY, imageSize, imageSize, random(-90, 90)));
    }
  }
}

void draw() {
  
  background (240);
  for (int i=0; i<miCara.size(); i++) {
    miCara.get(i).display();
    //misOjos.get(i).display();
    //miCircular_2.get(i).display();
    miImagen_1.get(i).display();
    miCircular_1.get(i).display();
    //miBoca.get(i).display();

    //exit();  // Quit
  }
}