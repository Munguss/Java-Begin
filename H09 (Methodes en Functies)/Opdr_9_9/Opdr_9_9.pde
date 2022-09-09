void setup() {
  size(800, 800);
}

void draw() {
  background(255, 255, 255);
  strokeWeight(3);

  //Bladeren
  fill(0, 255, 0);
  blad1(10, 100, 100, 100);
  blad2(100, 100, 100, 100);
  blad3(200, 100, 100, 100);
  blad4(100, 0, 100, 100);

  //Stam
  fill(121, 85, 61);
  stam1(100, 200, 100, 100);
  stam1(100, 300, 100, 100);
}

//Bladeren
void blad1(int x, int y, int w, int h) {
  rect(x, y, w, h);
}
void blad2(int x, int y, int w, int h) {
  rect(x, y, w, h);
}
void blad3(int x, int y, int w, int h) {
  rect(x, y, w, h);
}
void blad4(int x, int y, int w, int h) {
  rect(x, y, w, h);
}

//Stam
void stam1(int x, int y, int w, int h) {
  rect(x, y, w, h);
}
void stam2(int x, int y, int w, int h) {
  rect(x, y, w, h);
}
