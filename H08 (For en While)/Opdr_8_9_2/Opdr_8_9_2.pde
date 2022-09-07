size(800,800);
background(255,255,255);

float sizeC = 10;

for(int i = 0; i < 50; i++){
  ellipse(0 - sizeC/2, 0 - sizeC/2, sizeC,sizeC);
  sizeC-=5;
}
