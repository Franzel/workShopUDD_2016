int [] myNumbers; // DEcalaramos un array de ints
String [] myWords = { "esto", "es", "bacan" }; // declaramos y asignamos un array de ints

/*
// shortcut para declarar y crear
int [] myOtherNumbers = new int [5]; // solo otra manera de hacer lo mismo en un paso, ver abajo
*/

void setup() {
  size(500, 500);
  myNumbers = new int[5]; // CREAMOS un array de 5 elementos

  // ASIGNAMOS valores a los elementos
  myNumbers[0] = 2;
  myNumbers[1] = 4;
  myNumbers[2] = 6;
  myNumbers[3] = 8;
  myNumbers[4] = 10;
  //  myNumbers[5] = 12;  // esto da un error porque esta fuera del limite (out of bounds)!!!
}

void draw() {
  //el array de strings
  for (int i = 0; i<myWords.length ; i++) {
    println(myWords[i]);
  }

  // el array de ints
  for (int i = 0; i<myNumbers.length ; i++) {
    println(myNumbers[i]);
    rect(10 * myNumbers[i], 100, 10, 10); // usemos esos numeros para posicionar rects
  }
}