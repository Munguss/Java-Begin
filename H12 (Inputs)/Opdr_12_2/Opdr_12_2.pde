int i = 1;
long milliSeconds = 0;

int seconden;
int gedrukt = 0;
boolean racen = true;

void setup() {
}

void draw() {
  
  seconden = millis()/1000;
  if(seconden >= 10){
  racen = false;
  }
}

void keyReleased() {
  if (key == 32 && racen){
  println(i++);
}}
