class Face {
  PVector pos;
  PVector size;
  color faceColor;
  PVector mouthSize, mouthSize2;


  Mouth m = new Mouth(pos, mouthSize, color(0));//create an object of class Mouth
  Mouth m2 = new Mouth(pos, mouthSize2, color(0));//create an object of class Mouth
  Element2 e2 = new Element2(pos, mouthSize, color(0), 0);


  //constructor
  public Face(PVector pos, PVector size, color faceColor, PVector mouthSize) {
    mouthSize2 = new PVector(mouthSize.x, mouthSize.y);
    mouthSize2.mult(random(0.3, 2));
    this.pos = pos;
    this.size = size;
    this.faceColor = faceColor;
    this.m = new Mouth(new PVector(pos.x, pos.y), mouthSize, faceColor * color(255, 10, 10));
    this.m2 = new Mouth(new PVector(pos.x, pos.y), mouthSize2, faceColor - color(30, 30, 30));
    this.e2 = new Element2(new PVector(pos.x, pos.y), mouthSize2, faceColor, random(2));
  }

  //draw
  public void display() {
    fill(faceColor);
    //noFill();
    stroke(faceColor * color(50, 90, 10));
    ellipse(pos.x, pos.y, size.x, size.y);
    m.display();
    m2.display();
    e2.display();
  }
}