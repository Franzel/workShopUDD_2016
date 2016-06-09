import processing.pdf.*;
PShape imagenSvg;

void setup() 
{
  size(2000, 2000, PDF, "tigre.pdf");
  //size(1000,1000);
  imagenSvg = loadShape("svgExample3.svg");
}

void draw() 
{
  background(255);
  imagenSvg.enableStyle();
  //stroke(10);
  shape(imagenSvg, 10, 10, 1600, 1600);
  exit();  // Quit the program
}