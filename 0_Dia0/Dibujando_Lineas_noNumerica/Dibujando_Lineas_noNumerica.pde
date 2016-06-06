void setup() {
  size(500, 500); 
  background(255);
}

void draw() {
  fill(255);
  ellipse(width/2, height/2,100,100);
  line(0,0,width, height);
  line(0,height, width, 0);
}
