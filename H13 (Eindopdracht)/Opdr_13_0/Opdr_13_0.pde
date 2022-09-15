import controlP5.*;

ControlP5 cp;

//Knop voor *
Button knop1;

//De eindgetallen variabelen
float eindgetal1;
float eindgetal2;
float eindgetal3;
float eindgetal4;
float eindgetal5;
float eindgetal6;
float eindgetal7;
float eindgetal8;
float eindgetal9;
float eindgetal10;

//Textveld variabel 
Textfield tekstveld1;

void setup() {
  size(400, 400);

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
  background(255);

//De plek waar de andwoorden staan
  text(eindgetal1, 250, 40);
  text(eindgetal2, 250, 60);
  text(eindgetal3, 250, 80);
  text(eindgetal4, 250, 100);
  text(eindgetal5, 250, 120);
  text(eindgetal6, 250, 140);
  text(eindgetal7, 250, 160);
  text(eindgetal8, 250, 180);
  text(eindgetal9, 250, 200);
  text(eindgetal10, 250, 220);
}

//Berekening
void keer() {
  String tafel = "i";
  float getal1 = int(tekstveld1.getText());
  fill(0);
  
//De berekeningen voor de antwoorden
  eindgetal1 = getal1;
  eindgetal2 = getal1*2;
  eindgetal3 = getal1*3;
  eindgetal4 = getal1*4;
  eindgetal5 = getal1*5;
  eindgetal6 = getal1*6;
  eindgetal7 = getal1*7;
  eindgetal8 = getal1*8;
  eindgetal9 = getal1*9;
  eindgetal10 = getal1*10;
}
