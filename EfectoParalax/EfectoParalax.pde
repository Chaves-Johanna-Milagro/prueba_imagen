private Escena escena;
private float deltaTime;
void setup(){
  size(800,400);
  //frameRate(60);
  int framesPorSegundo= round(frameRate);
  deltaTime= 1.0/framesPorSegundo;
  escena = new Escena();
}

void draw(){
  //frameRate(10);
  escena.display(deltaTime);
}
