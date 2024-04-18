PImage personaje;
int ubicacion=200;
PImage secundario;
PImage fondo;
color pintar= color(250,0,255);
PFont letra;

void setup(){
 size(600,600);
 personaje=loadImage("igris_chibi.gif");
 secundario=loadImage("beru_chibi.gif");
 fondo=loadImage("fondo.jpg");
 letra=loadFont("VinerHandITC-80.vlw");
 textFont(letra);
}

void draw(){
  tint(pintar);
 image(fondo,0,0,width,height);
 noTint();
 image(personaje,mouseX-100,mouseY-100,width-ubicacion*2,height-ubicacion*2);
 /*image(personaje,ubicacion,ubicacion,width-ubicacion*2,height-ubicacion*2);*/
 image(secundario,ubicacion-10,ubicacion-10,width-ubicacion*4,height-ubicacion*4);
 textSize(30);
 fill(255,100);
 textAlign(CENTER);
 text("igris",ubicacion-20,ubicacion-20);
}
