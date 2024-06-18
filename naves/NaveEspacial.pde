/**Representa una nave espacial */
class NaveEspacial{
  /**representa la imagen de la nave*/
  private PImage imagen;
  /**posicion de la imagen*/
  private PVector posicion;
  
  /** Constructor por defecto*/
  public NaveEspacial(){
    imagen = loadImage("resources/images/flywin.png");
    posicion = new PVector(width/2,height/2);
  }
  
  /** vsualiza la imagen de la nave*/
  public void display(){
    imageMode(CENTER);
    image(imagen,this.posicion.x,this.posicion.y,50,50);
  }
  
  public void disparar(ArrayList<Disparo> disparos){
    if(mousePressed && mouseButton == LEFT){
      PVector pos = new PVector(this.posicion.x,this.posicion.y);
      
      Disparo disparo = new Disparo(pos,10);
      disparos.add(disparo);
    }
  }
  
   /** permite cambiar la posición de la nave mediante el mouse*/ 
  public void move(){
    this.posicion.x = mouseX;
    this.posicion.y = mouseY;
  }
}
