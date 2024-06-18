SpawnerGemas sp;
Personaje p;
boolean bandera;
void setup(){
  size(400,400);
  sp = new SpawnerGemas();
  sp.crearGemas();
  bandera=false;
  p = new Personaje();
}

void draw(){
  background(255,0,0);
  sp.visualizarGemas();
  ArrayList<Gema> gemas = sp.getGemas();
  if(bandera!=true){
     for(Gema g:gemas){
      println("x: "+g.getPosicion().x + " - y: "+g.getPosicion().y);
     }
     bandera=true;
  }
  p.display();
  p.setPosicion(new PVector(mouseX,mouseY));
  p.colisionar(sp);
}
