import controlP5.*;

ControlP5 cp;

Button Button1;
Button Button2;

void setup(){
  size(800,800);
  
  cp = new ControlP5(this);
  
Button1 = cp.addButton("Button1")
.setPosition(200,200)
.setSize(200,100)
.setCaptionLabel("Goed gedaan!");

Button2 = cp.addButton("Button2")
.setPosition(400,400)
.setSize(200,100)
.setCaptionLabel("Helaas fout!");
  
}

void draw(){

}

void Button1(){
  println("Goed gedaan!");
}

void Button2(){
  println("Helaas fout!");
}
