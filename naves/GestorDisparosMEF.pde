/** Clase que gestiona los disparos realizados*/
class GestorDisparosMEF {
  private ArrayList<Disparo> disparos;

  public GestorDisparosMEF() {
    this.disparos = new ArrayList();
  }
  /** Elimina un disparo de la lista de disparos cuando 
   el recorrido llega a la parte superior de la pantalla
   @ d: es el disparo que se evaluará si ha llegado a la parte superior*/
  public void evaluarEliminarDisparo(Disparo d) {
    if (d.getPosicion().y < 0) {
      disparos.remove(d);
    }
  }

  /** Visualiza todos los disparos de la lista */
  public void displayDisparos() {
    for (int i=0; i<disparos.size(); i++) {
      Disparo d = disparos.get(i);
      d.display();

      evaluarEliminarDisparo(d);
    }
  }

  /** Verifica si hay un disparo colisiona con una nave de a flota*/
  public void validarImpacto(Enemy[] enemigos, ArrayList<Explosion> explosiones) {
    for (int i=0; i<disparos.size(); i++) {
      Disparo d = disparos.get(i);
      for (int j=0; j<enemigos.length; j++) {
        if (enemigos[j] != null) {
          Enemy e = enemigos[j];

          boolean existeColision = true;
          if (d.getPosicion().x-d.getAnchoDisparo()/2 > e.getPosicion().x-e.getAnchoImagen()/2+e.getAnchoImagen()) {
            existeColision = false;
          }

          if (d.getPosicion().x-d.getAnchoDisparo()/2 + d.getAnchoDisparo() < e.getPosicion().x-e.getAnchoImagen()/2) {
            existeColision = false;
          }

          if (d.getPosicion().y > e.getPosicion().y+e.getAltoImagen()) {
            existeColision = false;
          }

          if (d.getPosicion().y + d.getAltoDisparo() < e.getPosicion().y) {
            existeColision = false;
          }

          if (existeColision) {
            Explosion unaExplosion = new Explosion((int)e.getPosicion().x,(int)e.getPosicion().y);
            //unaExplosion.display();
            explosiones.add(unaExplosion);
            disparos.remove(d);
            enemigos[j] = null;
          }
        }
      }
    }
  }


  public ArrayList<Disparo> getDisparos() {
    return this.disparos;
  }

  public void setDisparos(ArrayList<Disparo> disparos) {
    this.disparos = disparos;
  }
}
