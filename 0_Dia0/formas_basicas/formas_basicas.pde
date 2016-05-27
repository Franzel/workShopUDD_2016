void setup() {
  size(500, 500);
  smooth(); //turns on the anti aliasing
}

void draw() {
  background(0);

  //puntos
  stroke(255);
  point(100, 100);
  point(200, 200);
  point(300, 300);
  point(400, 400);

  //dibujando rectangulos, definiendo color
  fill(0, 255, 0);
  rect(10, 10, 20, 20);

  stroke(255, 0, 0);
  strokeWeight(3);
  rect(10, 50, 30, 30);

  //dibujando elipses
  fill(0,0,255);
  stroke(0,255,255);
  ellipse (10, 100, 30, 30);
  
  //dibujando lineas
  strokeWeight(5);
  line(0,height/2,width,height/2);

}

