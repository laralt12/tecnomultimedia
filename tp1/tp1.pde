//Lara Luque Tommasini
//Comisión 5 Tp 0
//Legajo 95556/3

PImage d0, d4, d3;
float texto1x = 0;
float texto2x = 480;
PFont fuente;
int pantalla = 1;
int movimiento = 0;
int segundos = 0;
boolean reiniciar = false;

void setup() {
  size(640, 480);
  textSize(45);
  fuente = loadFont("Georgia-BoldItalic-48.vlw");
  d0 = loadImage("martillo0.jpg");
  d3 = loadImage("martillo3.jpg");
  d4 = loadImage("martillo4.jpg");
}

void draw() {
  background(0);
  if (reiniciar) {
    reiniciar = false;
    segundos = 0;
    texto1x = 0;
    pantalla = 1;
  }
  
  if (pantalla == 1) {
    image(d4, 0, 0, 640, 480);
    fill(16, 94, 249);
    textAlign(CENTER, CENTER);
    textFont(fuente, 45);
    text("Un martillo es una herramienta\n utilizada clavar, calzar partes o romper una pieza.", texto1x, 0, 640, 480);
    texto1x += 3;
  } else if (pantalla == 2) {
    image(d3, 0, 0, 640, 480);
    fill(255, 8, 37);
    text("La forma básica del martillo consiste en un mango con una \ncabeza pesada en su extremo.", texto1x, 0, 640, 480);
    texto1x -= 3;
  } else if (pantalla == 3) {
    image(d4, 0, 0, 640, 480);
    fill(251, 105, 26);
    textSize(40);
    text("Ha sido una herramienta clave que nos abrió \nel camino hacia la humanidad \ntal como la conocemos hoy", texto1x, 0, 640, 480);
    texto1x += 3;
  }

  if (frameCount % 60 == 0) {
    segundos++;
  }

  if (segundos == 3) {
    pantalla = 2;
  } else if (segundos == 6) {
    pantalla = 3;
  }

  if (pantalla == 3) {
    fill(255);
    rect(10, 10, 80, 30);
    fill(0);
    textFont(fuente, 15);
    text("Reiniciar", 50, 28);
  }
}

void mousePressed() {
  if (mouseX > 10 && mouseX < 90 && mouseY > 10 && mouseY < 40) {
    reiniciar = true;
  }
}
