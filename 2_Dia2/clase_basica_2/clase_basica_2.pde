Cara miCara_1; //creamos una variable, esto esta aun vacio, solo un espacio en memoria

void setup() {
  size(700, 200);

  //creamos el objeto: la primera cara
  miCara_1 = new Cara(100, 100, 100, 100); 
}

void draw() {
  //creamos el objeto: la segunda cara
  miCara_1.display(); 
}