float gewicht = 71;
float lengte = 1.82;
float leeftijd = 36;
float BMI = 0;

BMI = gewicht / (lengte * lengte);
BMI *= 10;
BMI = round(BMI);
BMI /= 10;
println(BMI);

size(700, 500);
background(255, 255, 255);

rect(150, 200, 100, 30);
rect(300, 200, 100, 30);
rect(450, 200, 100, 30);

fill(0, 0, 0);
text("Gewicht = " + gewicht + "KG", 155, 220);
text("Leeftijd = " + leeftijd + " jaar", 305, 220);
text("Lengte:" + lengte + " meter", 455, 220);

if(leeftijd < 70){
 if(BMI < 18.5){
    fill(255,255,0);
 }else if(BMI <25){
    fill(0,255,0);
 } else if(BMI < 30){
     fill(255,255,0);
 }else{
    fill(255,0,0);
  }
}else{
  if(BMI < 22){
    fill(255,255,0);
  }else if(BMI < 28){
    fill(0,255,0);
  }else if(BMI < 30){
     fill(255,255,0);
  }else{
    fill(255,0,0);
  }
}

textSize(30);
text("BMI: " + BMI,300,100);
