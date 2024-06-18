private Jugador jugador;

void setup(){
  size(400,400);
  jugador = new Jugador();
}

void draw(){
  background(0);
  jugador.display();
  jugador.move();
}

void keyPressed(){
  switch(key){
    case 'd':{
      jugador.setStatePlayer(PlayerStateMachine.MOVE_RIGHT);
      break;
    }
  }
}

void keyReleased(){
  switch(key){
    case 'd':{
      jugador.setStatePlayer(PlayerStateMachine.IDLE);
      break;
    }
  }
}
