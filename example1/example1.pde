
ArrayList<Face> face;
final int NUM_X = 20;
final int NUM_Y = 20;

void setup () {
  size(800, 800);
  face = new ArrayList();

  for (int i=0; i<NUM_X; i++) {
    for (int j=0; j<NUM_Y; j++) {

      PVector p = new PVector(i*(width/float(NUM_X-1)), j*(height/float(NUM_Y-1)));
      float sizeRandom = random (width/NUM_X);
      
      PVector s = new PVector (sizeRandom, sizeRandom);
      color c = color(random(200,255),random(100,255),random(100,255));
      PVector mS = new PVector(random(20,25), random(30));
      
      face.add(new Face(p, s, c, mS));
      
    }
  }
  
}

void draw() {
  background (245);
  for (int i=0; i<face.size(); i++) {
    face.get(i).display();
  }
}