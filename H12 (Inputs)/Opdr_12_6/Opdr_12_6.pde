int X = 250;
int Y = 250;

void setup() {
  size(500, 500);
}

void draw() {
  background(255);
  fill(0);
  rect(X, Y, 10, 10);
}

void keyPressed() {
  //Pijl Omhoog
  if (keyCode == 38) {
    Y -= 10;
  }
  //Pijl Links
  if (keyCode == 37) {
    X -= 10;
  }
  //Pijl Omlaag
  if (keyCode == 39) {
    X += 10;
  }
  //Pijl Rechts
  if (keyCode == 40) {
    Y += 10;
  }
}
