Cara miCara_1; //creamos una variable, esto esta aun vacio, solo un espacio en memoria
Ojos misOjos_1;
Boca miBoca_1;

Cara miCara_2;
Ojos misOjos_2;
Boca miBoca_2;


void setup() {
  size(700, 200);
  PVector mainPos = new PVector(100, 100); // usaremos esto para la posicion del elemento
  PVector mainScale = new PVector(100, 100); //y esto para el tamaño

  //creamos el objeto: la primera cara
  miCara_1 = new Cara(100, 100, 100, 100); 
  misOjos_1 = new Ojos(100, 100, 10, 10);
  miBoca_1 = new Boca(100,100,10,10);
 
  //creamos el objeto: la segunda cara
  miCara_2  = new Cara(300, 100, 100, 100); 
  misOjos_2 = new Ojos(300, 100, 20, 20);
  miBoca_2  = new Boca(300,100,10,10);

}

void draw() {
  background(200);
  //dibujamos el objeto: la primera cara
  miCara_1.display(); 
  misOjos_1.display();
  miBoca_1.display();
  
  //dibujamos el objeto: la segunda cara
  miCara_2.display(); 
  misOjos_2.display();
  miBoca_2.display();
}