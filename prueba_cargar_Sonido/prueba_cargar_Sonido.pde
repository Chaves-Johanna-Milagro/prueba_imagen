import ddf.minim.*;

Minim minim;  //almacena lo que posee mimin
AudioPlayer player;// AudioPlayer es como una clase que permite cargar el audio

void setup(){
 size(600,600);
 minim=new Minim(this);  //lo inicializa
 player=minim.loadFile("ice.mp3");  //carga el audio que se agrega dentro de la carpeta data
 
}
void draw(){
  background(#840EED);
   if(player.isPlaying()){
     textSize(20);
   text("Presiona alguna tecla para pausar",100,100);
 }else{
   textSize(20);
 text("Presiona una tecla para play",100,100);
 }

}
void keyPressed(){
  if( player.isPlaying()){   
   player.pause();  //lo mantiene en pausa y lo pone en pausa
   
  }
  else{
  player.play();   //
}
}
