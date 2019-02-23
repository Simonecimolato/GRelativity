class Body {
  float x;
  float y;
  float M;

  void display() {
    fill(51);
    stroke(51);
    ellipse(x, y, map(M, 0, 800, 5, 100), map(M, 0, 800, 5, 100));
    noFill();
  }

  Body() {
    x = mouseX;
    y = mouseY;
    M = random(1) * mouseY*2;
  }
}
