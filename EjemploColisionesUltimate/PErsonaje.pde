class Personaje{
  private PVector posicion;
  private float radio;
  
  public Personaje(){
    posicion = new PVector(width/2, height/2);
    this.radio =30;
  }
  
  public void display(){
    circle(posicion.x,posicion.y,radio*2);
  }
  
  public void colisionar(SpawnerGemas sp){
    //boolean colisiona = false;
    
    for(Gema g: sp.getGemas()){
      float distanciaEntrePuntos = this.posicion.dist(g.getPosicion());
      float distanciaSinRadios = distanciaEntrePuntos - this.radio - g.getRadio();
      if(distanciaSinRadios<=0){
        println("colsionó");
        //colisiona =true;
      }else{
        println("no colsiona");
      }
    }
    
    
  }
  
  
  public void setPosicion(PVector posicion){
    this.posicion=posicion;
  }
}
