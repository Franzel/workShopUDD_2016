float miColor;


void setup(){
 size(500,500);
   //background(0);
}

void draw(){
  
  miColor= random(255);
  

  //fill(random(255)); //escala de grises
  fill(random(255), random(255), random(255)); //random RGB
  ellipse(random(width), random(height),30,30); //posicion random
}
