PImage spriteEnemigo;
PImage spriteJugador;

PImage fondo;
//arrays que almasenan las imagenes les sprite
PImage[] sprites1;  //sprite enemigo
PImage[] sprites2;   //sprite jugador
int spriteWidth =32;  //ancho de un frame del sprite
int spriteHeight =32;  //alto de un frame del sprite
int numFrames1=2;   //numero total de frames del sprite enemigo
int numFrames2=8;   //numero total de frames del sprite del jugador
int frameActual=0;   
int frameDelay=5;   //tiempo o retraso entre frames
int frameCount=0;   //contador de frames

PVector posicion;


float linternaRadio=100;  //variable para el radio de la linterna

void setup(){
  size(600,600);
  posicion=new PVector(200,200);
  spriteEnemigo=loadImage("spritesEnemigo.png");
  spriteJugador=loadImage("spritesJugador.png");
  fondo=loadImage("fondo.png");
  
  
  sprites1= new PImage[numFrames1]; //inicia el array de sprites
  sprites2= new PImage[numFrames2];
  
  for(int i=0;i<numFrames1;i++){    //extrae los frames del sprite
    sprites1[i]=spriteEnemigo.get(i*spriteWidth,0,spriteWidth,spriteHeight);
    }
   for(int i=0;i<numFrames2;i++){    //extrae los frames del sprite
    sprites2[i]=spriteJugador.get(i*spriteWidth,0,spriteWidth,spriteHeight);
    }

}


void draw(){
 background(0);  
 
 float offsetX=width/2-posicion.x;
float offsetY=height/2-posicion.y;

 //crea una mascara con la imagen y da un efecto de lintena
 PGraphics mask=createGraphics(width,height);
   mask.beginDraw();
   mask.background(0);
   mask.noStroke();
   mask.fill(255);
   mask.ellipse(posicion.x,posicion.y,linternaRadio*2,linternaRadio*2);
   mask.endDraw();
   
  //permite almacenar el fondo en una pieza de modo que se muestre cuando el personaje se acerque
   PGraphics resultado=createGraphics(width,height);
   resultado.beginDraw();
   resultado.image(fondo,offsetX,offsetY);
   resultado.image(sprites1[frameActual],width/2-spriteWidth/2,height/2-spriteHeight/2);  //sprite enemigo
   resultado.endDraw();
   
   resultado.mask(mask);
   image(resultado,0,0);
/*
  
 
 
 
/*imageMode(CORNER);
fondo.resize(width,height);
image(fondo,offsetX-200,offsetY-200);*/

 //dibuja los sprites y su animacion
 // image(sprites1[frameActual],width/2-spriteWidth/2,height/2-spriteHeight/2); //sprite enemigo
  image(sprites2[frameActual],posicion.x-10,posicion.y-2); //sprite jugador
  frameCount++;
  if(frameCount>=frameDelay){
     frameActual=(frameActual+1)%numFrames1;
     frameCount=0;
  }
  if(frameCount>=frameDelay){
     frameActual=(frameActual+1)%numFrames2;
     frameCount=0;
  }

}
//movimiento del jugador
void keyPressed(){
 if(keyCode==UP){
 posicion.y=posicion.y-10;
 }
 if(keyCode==DOWN){
 posicion.y=posicion.y+10;
 }
 if(keyCode==LEFT){
 posicion.x=posicion.x-10;
 }
 if(keyCode==RIGHT){
 posicion.x=posicion.x+10;}
}
