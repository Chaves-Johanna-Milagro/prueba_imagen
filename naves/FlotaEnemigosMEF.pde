/** GEstiona los estados de la flota de enemigos*/
class FlotaEnemigosMEF {
  /** representa a los enemigos de un nivel*/
  private Enemy[] flotaEnemigos;

  /** Constructor parametrizado
  @nivelFormacion indica el nivel o fase sobre la que se formarán los enemigos
  @cantEnemigos indica la candad de enemigos de la flota
  */
  public FlotaEnemigosMEF(int nivelFormacion, int cantEnemigos) {
    // creo el arreglo de enemigos con una cantidad igual a cantEnemigos
    flotaEnemigos = new Enemy[cantEnemigos];
    /// aqui invoco el método correspondiente
    generarFlota(nivelFormacion);
  }

  /** Establece la formación de los enemigos dentro del arreglo */
  private void generarFlota(int nivelFormacion) {
    switch (nivelFormacion) {
    case 1:
      {
        Enemy e;
        int distanciaEnemigosX = 30;
        
        for (int i=0; i<flotaEnemigos.length; i++) {
          if (i%2 == 0) {
            e = new FloatSkull();   
          } else {
            e = new MineWorm();
          }
          e.setPosicion(new PVector(distanciaEnemigosX,30));
          flotaEnemigos[i] = e;
          distanciaEnemigosX+=60;
        }
      }
    }
  }
  
  /** Visualiza los enemigos de la flota*/
  public void visualizarFlota(){
    
    for(int i=0;i<flotaEnemigos.length;i++){
      if(flotaEnemigos[i] != null){
        flotaEnemigos[i].display();
      }
      
    }
  }
  
  
  public Enemy[] getFlotaEnemigos(){
    return flotaEnemigos;
  }
}
