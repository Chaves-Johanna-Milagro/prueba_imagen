class Gema{
  private PVector posicion;
  private float radio;
  
  public Gema(){
  }
  
  public Gema(PVector posicion){
    this.posicion=posicion;
    this.radio = 10;
  }
  
  public void display(){
    strokeWeight(4);
    point(this.posicion.x,this.posicion.y);
  }
  
  public PVector getPosicion(){
    return this.posicion;
  }
  
  public float getRadio(){
    return this.radio;
  }
  
}
