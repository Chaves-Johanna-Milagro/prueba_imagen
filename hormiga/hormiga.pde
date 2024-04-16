PImage personaje;
int ubicacion=20;

void setup(){
 size(600,600);
 personaje=loadImage("igris.jpg");
}

void draw(){
 image(personaje,0,0); 
}
