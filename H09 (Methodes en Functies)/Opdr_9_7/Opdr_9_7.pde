size(800, 800);
background(255, 255, 255);

for (int i = 0; i < 50; i++) {
  for (int j = 0; j <10; j++) {

    if((i + j) % 2 == 0) {
      fill(255, 0, 0);
    }
    
     else {
      fill(255, 0, 0);
    }
        rect(i*10, j*10, 10, 10);
  }
}
