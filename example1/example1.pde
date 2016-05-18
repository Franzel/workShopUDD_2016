import processing.pdf.*;

ArrayList<Face> face;  //creamos un array de Faces
final int NUM_X = 20;  // numero de columnas
final int NUM_Y = 20;  // numero de filas

void setup () {
  size(800, 800);
  //size(800, 800, PDF, "filename.pdf" );
  face = new ArrayList();
  color c  = color(255, 0, 0);

  for (int i=0; i<NUM_X; i++) {
    for (int j=0; j<NUM_Y; j++) {
      PVector p = new PVector(i*(width/float(NUM_X-1)), j*(height/float(NUM_Y-1)));
      float sizeRandom = random (10, width/NUM_X);

      PVector s  = new PVector (sizeRandom, sizeRandom);
      c  += color(random(100, 255), random(100, 155), random(100, 255));
      PVector mS = new PVector(random(10, 20), random(10));

      face.add(new Face(p, s, c, mS));
    }
  }
}

void draw() {
  
  background (245);
  for (int i=0; i<face.size(); i++) {
    face.get(i).size = new PVector(10,10);
    face.get(i).display();
  }
  
  //noLoop(); //para que draw corra una sola vez
  println("Finished.");
  //exit();
}