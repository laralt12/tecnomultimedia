//Lara Luque Tommasini
//Comisión 5 Tp 0
//Legajo 95556/3

void setup() {
  size(800, 400);
  background(255);
 PImage herramienta;
  herramienta = loadImage("destor.jpg");
  image(herramienta, 0, 0, 400, 400);
}
void draw(){
println("X:");
println(mouseX);
println("Y:");
println(mouseY); 
fill(232,222,99);
noStroke();
rotate((0.12));  
rect(600, 200, 50, 120, 20);
fill(222,222,222);
rect(615,1, 15, 180, 20);
fill(187,189,188);
rect(615,6, 5, 180, 20);
fill(232,222,99);
rect(600, 147, 50, 60, 20);
fill(85,91,80);
rect(615,-10,15, 20);
fill (221,211,80);
rect(605,160,18,40,20);
fill (221,211,80);
rect(605, 200, 18, 110, 20);
}
