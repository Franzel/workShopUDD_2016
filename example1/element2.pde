class Element2 {

  PVector pos;
  PVector size;
  color elementColor;
  float rotation;

  public Element2(PVector pos, PVector size, color elementColor, float rotation) {
    this.pos = pos;
    this.size = size;
    this.elementColor = elementColor;
    this.rotation = rotation;
  }

  public void display() {
    stroke(elementColor);

    point(pos.x, pos.y);
    for (int i=0; i<8; i++) {
      pushMatrix();
      rectMode(CENTER);
      translate(pos.x, pos.y);
      rotate(PI/size.x*i);
      noFill();
      //rect(0, 0, size.x+i*3, size.y+i*3);
      //stroke(elementColor*5);
      strokeWeight(1.5);
      line(-size.x,0,size.x,0);
      popMatrix();
    }

    rectMode(CORNER);
  }
}