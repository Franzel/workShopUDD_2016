/*
Este sketch demuestra como animar un elemento
via animacion de una variable
En cada cuadro incrementamos el valor de posicion
*/

float posX;
float posY;

void setup(){
  size(500,500);
  posX = 0;
  posY = width/2;
  
}

void draw(){
  background(100); //limpiamos el fondo
  ellipse(posX, posY, 30,30);
  posX = posX+1; // aumentamos un pixel cada cuadro
  
}