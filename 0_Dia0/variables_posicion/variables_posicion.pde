float posX, posY;
float sizeX, sizeY;

void setup() {
  size(500, 500);
  posX = width * 0.5;
  posY = height/2;
  sizeX = width/4;
  sizeY = height * 0.25;
}

void draw() {
  fill(#64C68F); //color en hexadecimal
  rect(posX, posY, sizeX, sizeY);

  fill(200, 100, 180, 127); //color con alpha
  //noFill(); //esto es para eliminar el fill()
  rect(posX-sizeX/2, posY-sizeX/2, sizeX, sizeY);
}

