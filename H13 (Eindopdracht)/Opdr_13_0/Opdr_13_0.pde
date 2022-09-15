import controlP5.*;

ControlP5 cp;

//Knop voor *
Button knop1;

//De eindgetallen variabelen
String[] Getallen = new String[10];
int eindgetal;

//Textveld variabel 
Textfield tekstveld1;

void setup() {
  size(400, 400);
  background(255);
  
  cp = new ControlP5(this);


  //Button
  knop1 = cp.addButton("keer")
    .setPosition(10, 50)
    .setSize(20, 20)
    .setColorBackground(color(0, 0, 255))
    .setColorLabel(color(0))
    .setCaptionLabel("*");

  //Textveld invoeren
  tekstveld1 = cp
    .addTextfield("input1")
    .setAutoClear(false)
    .setPosition(10, 10)
    .setText("")
    .setCaptionLabel("Voer je getal in!")
    .setColorLabel(color(0));
}

void draw() {
}

//Berekening
void keer() {
  int getal1 = int(tekstveld1.getText());
  fill(0);
  
  for(int i = 0; i <=10; i++){
  text(i + "x"+ getal1 + "=" +(getal1*i),220,10+i*10);
  }
}
