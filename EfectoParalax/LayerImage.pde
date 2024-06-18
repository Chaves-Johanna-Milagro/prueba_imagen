class LayerImage{
  private PVector velocidad;
  private PVector posicion;
  private PImage imagen;
  
  public LayerImage(PVector velocidad, PVector posicion, String pathImage){
    this.velocidad=velocidad;
    this.posicion=posicion;
    this.imagen = loadImage(pathImage);
    this.imagen.resize(width+4,height);
  }
  
  public void display(){
    imageMode(CORNER);
    image(this.imagen,this.posicion.x,this.posicion.y);
  }
  
  public void updatePosition(float deltaTime){
    this.posicion.x-=(this.velocidad.x*deltaTime); 
    if(this.posicion.x<-width){
      this.posicion.x=width;
    }
    
  }
  
}
