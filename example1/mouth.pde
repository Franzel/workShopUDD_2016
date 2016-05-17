class Mouth {
  PVector pos;
  PVector size;

  public Mouth(PVector pos, PVector size) {
    this.pos = pos;
    this.size = size;
  }

  public void display() {
    fill(25,0,0);
    ellipse(pos.x, pos.y, size.x, size.y);
  }
}