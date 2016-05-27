int nElementos = 10;

void setup() {
  size(600, 200);

  for (int i=0; i<nElementos; i++) {
    println("i es ahora: " + i);
    dibujar(40*i, 20*i, color(255,0,0));
  }
}

void draw() {

}


void dibujar(float x, float y, color c) {
  fill(c);
  ellipse(x, y, 20, 20);
  line(x, y, x+100, y-300);
}

