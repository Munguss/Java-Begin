void setup(){
  size(500,500);
  background(255);

}

void draw(){
  println(mouseX + "x");
  println(mouseY + "y");

}

void mouseMoved(){
  int r = floor(color(255));
  int g = floor(color(255));
  int b = floor(color(255));
  fill(r,g,b);
  rect(mouseX,mouseY,10,10);

}
