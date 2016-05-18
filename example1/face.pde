class Face {
  PVector pos;
  PVector size;
  color faceColor;
  PVector mouthSize;

  Mouth m = new Mouth(pos, mouthSize, color(0));//create an object of class Mouth


  //constructor
  public Face(PVector pos, PVector size, color faceColor, PVector mouthSize) {
    this.pos = pos;
    this.size = size;
    this.faceColor = faceColor;
    this.m = new Mouth(new PVector(pos.x, pos.y + 10), mouthSize, faceColor*color(5,10,10));
  }

  //draw
  public void display() {
    fill(faceColor );
    stroke(faceColor * color(50,90,10));
    ellipse(pos.x, pos.y, size.x, size.y);
    m.display();
  }
}