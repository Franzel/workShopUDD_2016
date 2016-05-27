int nDibujos = 10;

void setup(){
  size(500,500);
  
}

void draw(){
  background(200,250,250);
  smooth();
  //dibujar(30, 200, 30, 30);
  
  for(int i=0;i<nDibujos;i++){
   dibujar(50*i, 100, 30, 30); 
  }
  
}

void dibujar(float posX, float posY, float sizeX, float sizeY){
  
  fill(250,180,0);
  noStroke();
  ellipse(posX, posY, sizeX, sizeY);
  
  stroke(255,0,0);
  line(posX-sizeX/2, posY, posX + sizeX/2, posY);
}