boolean gevonden;
String[] namen = {"Ben", "Lisa", "Jan", "Bert", "Sky"};

void setup(){
  gevonden = false;
  for(int i = 0; i < namen.length; i++){
    // Bestaat de volgende waarde?
    if(namen[i] == "Jan"){
    gevonden = true;
    }
    
  }  
  
  println(gevonden);

}
