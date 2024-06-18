import ddf.minim.*;
import processing.sound.*;
class MusicaFondo extends Thread{
  private Minim minim;
  private AudioPlayer player;
  private boolean quit;
  private boolean playNow;
  
  public MusicaFondo(Minim minim, AudioPlayer player){
    this.minim = minim;
    this.player = player;
    this.quit = true;
    this.playNow = true;
  }
  
  public void run(){
    while(!this.quit){
      //esperar 10 milisegundos, entonces chequear
      //si es necesario ejecutar sonido
      try{
        Thread.sleep(10);
      }catch(InterruptedException e){
        return;
      }
      
      // si hemos confirmado que se ejecute el sonido, lo ejecutamos
      if(this.playNow){
        playNow = false;
        player.play();
        player.rewind();
      }
    }
  }
  
  // ----METODOS ACCESORES ----
  public void setQuit(boolean quit){
    this.quit = quit;
  }
  
  public void setPlayNow(boolean playNow){
    this.playNow = playNow;
  }
  
}
