import controlP5.*;

ControlP5 cp;

String[] Getallen = new String[10];
int teller = 0;

Button knop1;
Textfield tekstveld1;

void setup(){
  size(500,500);
  background(255);
  
  cp = new ControlP5(this);
  
  knop1 = cp.addButton("Knop1")
            .setPosition(50,250)
            .setSize(150,100)
            .setCaptionLabel("voeg de naam toe");
  
  tekstveld1 = cp.addTextfield("TextInput1")
                 .setPosition(50,150)
                 .setText("")
                 .setCaptionLabel("type naam hier")
                 .setColorLabel(color(0,0,0));
}

void draw(){
  
}

void Knop1(){
  Getallen[teller] = tekstveld1.getText();
  teller++;
  println(Getallen);
}