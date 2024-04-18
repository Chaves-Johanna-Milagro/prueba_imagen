float y=50.0;
float velocidad=7.0;
float radio=55.0;

void setup(){
  size(500,500);
  background(0);
  ellipseMode(RADIUS);
}
void draw(){
  background(0);
  ellipse(133,y,radio,radio);
  y=y+velocidad;
  if (y>height){
    y=-radio;}
}
