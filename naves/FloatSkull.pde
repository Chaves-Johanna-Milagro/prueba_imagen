class FloatSkull extends Enemy{
  
  /** Constructor por defecto*/
  public FloatSkull(){
    super(); //invoca al constructor de la superclase
    this.imagen = loadImage("resources/images/enemie2.png");
    this.anchoImagen=50;
    this.altoImagen=50;
  }
  
  /** Visualiza la nave en su posicion actual */
  public void display(){
    imagen.resize(this.anchoImagen,this.altoImagen);
    imageMode(CENTER);
    image(imagen,this.posicion.x,this.posicion.y);
  }
}
