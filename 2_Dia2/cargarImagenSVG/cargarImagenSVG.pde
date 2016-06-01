import processing.pdf.*;
PShape imagenSvg;

void setup() 
{
  size(2000, 2000, PDF, "Line.pdf");
  //size(1000,1000);
  imagenSvg = loadShape("svgExample3.svg");
}

void draw() 
{
  background(255);
  stroke(0, 20);
  strokeWeight(20.0);
  line(200, 0, width/2, height);
  imagenSvg.enableStyle();
  //stroke(10);
  shape(imagenSvg, 10, 10, 300, 300);
  exit();  // Quit the program
}