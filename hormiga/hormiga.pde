PImage personaje;
int ubicacion=200;
PImage secundario;

void setup(){
 size(600,600);
 personaje=loadImage("igris_chibi.gif");
 secundario=loadImage("beru_chibi.gif");
 
}

void draw(){
 image(personaje,ubicacion,ubicacion,width-ubicacion*2,height-ubicacion*2); 
 image(secundario,ubicacion-10,ubicacion-10,width-ubicacion*4,height-ubicacion*4);
}
