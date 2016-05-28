import processing.pdf.*;

ArrayList<Face> face;  //creamos un array de Faces
final int NUM_X = 25;  // numero de columnas
final int NUM_Y = 20 ;  // numero de filas

void setup () {
  size(800, 800);
  //size(1600, 800, PDF, "filename.pdf" );
  face = new ArrayList();
  colorMode(HSB,255);
  color c  = color(255, 0, 0, 20);

  for (int i=0; i<NUM_X; i++) {
    for (int j=0; j<NUM_Y; j++) {
      PVector p = new PVector(i*(width/float(NUM_X-1)), j*(height/float(NUM_Y-1)));
      float sizeRandom = random (2, width/NUM_X);

      PVector s  = new PVector (sizeRandom, sizeRandom);
      c  = color(random(10,100), random(200,255), random(200, 255), random(40,200));
      PVector mS = new PVector(random(7,10),random(7,10));

      face.add(new Face(p, s, c, mS));
    }
  }
}

void draw() {
  
  background (240);
  for (int i=0; i<face.size(); i++) {
    face.get(i).display();
  }
  
  //noLoop(); //para que draw corra una sola vez
  println("Finished.");
  //exit();
}