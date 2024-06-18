class Escena{
  private LayerImage[] capas;
  
  public Escena(){
    capas = new LayerImage[8];
    
    capas[0]=new LayerImage(new PVector(),new PVector(),"Cielo.png"); 
    
    capas[1]=new LayerImage(new PVector(100,0),new PVector(width,0),"Nubes Lejos.png");
    capas[2]=new LayerImage(new PVector(100,0),new PVector(0,0),"Nubes Lejos.png"); // se cargan dos veces para que el  movimiento dea continuo
    
    capas[3]=new LayerImage(new PVector(200,0),new PVector(),"Nubes Medio.png");
    capas[4]=new LayerImage(new PVector(200,0),new PVector(width,0),"Nubes Medio.png");
    
    capas[5]=new LayerImage(new PVector(400,0),new PVector(),"Nubes Cerca.png");
    capas[6]=new LayerImage(new PVector(400,0),new PVector(width,0),"Nubes Cerca.png");
    
    capas[7]=new LayerImage(new PVector(),new PVector(),"Edificios y suelo.png");
  }
  
  public void display(float deltaTime){
    for(LayerImage layer:capas){
      layer.display();
      layer.updatePosition(deltaTime);   
    }
  }
}
