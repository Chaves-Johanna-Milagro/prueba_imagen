PImage personaje;
int ubicacion=200;
PImage secundario;

void setup(){
 size(600,600);
 personaje=loadImage("igris_sin_fondo.jpg");
 
}

void draw(){
 image(personaje,ubicacion,ubicacion,width-ubicacion*2,height-ubicacion*2); 
}
