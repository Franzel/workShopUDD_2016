class Face {
  PVector pos;
  PVector size;
  color faceColor;
    
  PVector mouthSize = new PVector(10, random(1,6));
  Mouth m = new Mouth(pos, mouthSize);//create an object of class Mouth


  //constructor
  public Face(PVector pos, PVector size, color faceColor) {
    this.pos = pos;
    this.size = size;
    this.faceColor = faceColor;
    this.m = new Mouth(new PVector(pos.x,pos.y+5), mouthSize);
  }

  //draw
  public void display() {
    fill(faceColor);
    ellipse(pos.x, pos.y, size.x, size.y);
    m.display();
  }
}