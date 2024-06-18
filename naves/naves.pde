import ddf.minim.*;
import processing.sound.*;

Scenary escenario;
FlotaEnemigosMEF flotaMEF;
GestorDisparosMEF disparosMEF;
Minim minim;
AudioPlayer player;
NaveEspacial nave;
Disparo disparo;
ArrayList<Explosion> explosiones;

void setup(){
  size(626,354);
  minim = new Minim(this);
  player = minim.loadFile("resources/music/music2.mp3");
  player.play(); 
  flotaMEF = new FlotaEnemigosMEF(1,10);
  escenario = new Scenary();
  nave = new NaveEspacial();
  disparosMEF = new GestorDisparosMEF();
  frameRate(20);
  explosiones = new ArrayList();
}
void draw(){
  background(0);
  escenario.mostrarFondo();
  flotaMEF.visualizarFlota();
  nave.display();
  nave.move();
  nave.disparar(disparosMEF.getDisparos());
  disparosMEF.displayDisparos();
  disparosMEF.validarImpacto(flotaMEF.getFlotaEnemigos(),explosiones);
  for(int i=0;i<explosiones.size();i++){
    Explosion e = explosiones.get(i);
    e.display();
  }
}
