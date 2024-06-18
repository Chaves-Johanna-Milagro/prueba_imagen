/** Representa una nave enemiga*/
abstract class Enemy{
  /**Posicion de la nave */
  protected PVector posicion;
  /**Imagen de la nave*/
  protected PImage imagen;
  protected boolean isDestroyed;
  protected int altoImagen;
  protected int anchoImagen;
  
  public Enemy(){
    isDestroyed = false;
  }
  
  /** Método abstracto para visualizar la imagen*/
  public abstract void display();
  
  // -----METODOS ACCESORES -----//
  public PVector getPosicion(){
    return this.posicion;
  }
  public void setPosicion(PVector posicion){
    this.posicion = posicion;
  }
  
  public int getAltoImagen(){
    return this.altoImagen;
  }
  public void setAltoImagen(int altoImagen){
    this.altoImagen = altoImagen;
  }
  
  public int getAnchoImagen(){
    return this.anchoImagen;
  }
  public void setAnchoImagen(int anchoImagen){
    this.anchoImagen = anchoImagen;
  }
  
  
}
