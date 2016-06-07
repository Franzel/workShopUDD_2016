void setup() {
  size(100, 100); 
  background(255);
}

void draw() {
  fill(255);
  ellipse(width/2, height/2,width/2,height/2);
  line(0,0,width, height);
  line(0,height, width, 0);
}