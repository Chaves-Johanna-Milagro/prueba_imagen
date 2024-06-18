/** REpresenta el escenario del juego */
class Scenary{
  /** Represent el  fondo del juego*/
  private PImage fondo;
  
  /** Constructor por defecto*/
  public Scenary(){
    fondo = loadImage("resources/images/space.png");
    fondo.resize(width,height);
  }
  
  /** Muestra el fondo del escenario*/
  public void mostrarFondo(){
    background(fondo);
  }
}
