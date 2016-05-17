
ArrayList<Face> face;
final int NUM_X = 10;
final int NUM_Y = 10;

void setup () {
  size(800, 800);
  face = new ArrayList();

  for (int i=0; i<NUM_X; i++) {
    for (int j=0; j<NUM_Y; j++) {

      PVector p = new PVector(i*(width/float(NUM_X-1)), j*(height/float(NUM_Y-1)));
      PVector s = new PVector (random(50, 80), random(50, 80));
      color c = color(random(200,255),random(100,255),random(200,255));

      face.add(new Face(p, s, c));
      int index = NUM_X * j + i;
      face.get(index).mouthSize = new PVector(10,10);

      println(i + "" + face.get(i).faceColor);
    }
  }
  
}

void draw() {
  background (255);
  for (int i=0; i<face.size(); i++) {
    Face f = face.get(i);
    f.display();
  }
}