class SpawnerGemas{
  private ArrayList<Gema> gemas;
  
  public void crearGemas(){
    gemas = new ArrayList();
    for(int i=1;i<=4;i++){
      Gema gema = new Gema(new PVector(random(0,width-50),random(0,height-50)));
      gemas.add(gema);    
    }
  }
  
  public void visualizarGemas(){
    for(Gema g:gemas){
      g.display();
    }
  }
  
  
  public ArrayList<Gema> getGemas(){
    return this.gemas;
  }
}
