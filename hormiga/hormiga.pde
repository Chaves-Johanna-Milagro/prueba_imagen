PImage personaje;
int ubicacion=200;
PImage secundario;
PImage fondo;

void setup(){
 size(600,600);
 personaje=loadImage("igris_chibi.gif");
 secundario=loadImage("beru_chibi.gif");
 fondo=loadImage("fondo.jpg");
}

void draw(){
 image(fondo,0,0,width,height);
 image(personaje,ubicacion,ubicacion,width-ubicacion*2,height-ubicacion*2); 
 image(secundario,ubicacion-10,ubicacion-10,width-ubicacion*4,height-ubicacion*4);
}
