int[] Getallen = new int[10];

int teller = 0;
int gezocht = 3;

void setup(){
  Getallen[0] = 5;
  Getallen[1] = 3;
  Getallen[2] = 7;
  Getallen[3] = 1;
  Getallen[4] = 5;
  Getallen[5] = 7;
  Getallen[6] = 3;
  Getallen[7] = 5;
  Getallen[8] = 6;
  Getallen[9] = 0;
  
  println(Getallen);
  for(int i=0; i<Getallen.length; i++){
    if(gezocht == Getallen[i]){
      teller++;
    }
  }
  
  println(teller);
}

void draw(){
  
}
