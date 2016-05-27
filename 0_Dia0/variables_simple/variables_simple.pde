///DECLARANDO VARIABLES

/// manera basica de declarar una variable
int x;       //le estamos pidiendo al computador que guarde espacio en su memoria para un int llamado "x"
float xPos;  //idem, para un float llamado "xPos"

//Shortcut para declarar mas de una variable al mismo tiempo
//Son todas del mismo tipo de data, en este caso son "integers", que aca se llaman "int"
int cat, dog, squirrel; 


// Podemos tambien asignar un valor a la variable al declararla.
int y = 100;
float yPos = 200;


void setup() {  
  size(500, 500); //como convención siempre declaramos el tamaño de ventana primero

  x = 100; //asignamos un valor a la variable x que decalaramos arriba
  xPos = 200;// idem para xPos

  int myVar;  //si declaramos una variable aca (dentro de setup) solo será accesible dentro de setup()

  cat = dog = squirrel = 100;  //otro shortcut

  
  int z;
  //int z=100; //esto es una re'declaracion de una variable, por lo tanto dará un error!
  
}

void draw() {
  rect(xPos, yPos, x, y); //usando las variables para darle forma a un rectángulo
}