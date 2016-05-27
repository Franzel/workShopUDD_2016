int posX;
int posY;

void setup() {
  size(800, 800);
  posX = 1;
  posY = 1;
}

void draw() {
background (250,50,250);
  
  for (int x=0; x<width ; x+= 20) {
    for (int y=0; y<height ; y+= 20) {
      rect(posX * x, posY * y, 10, 10);
    }
  }
}

