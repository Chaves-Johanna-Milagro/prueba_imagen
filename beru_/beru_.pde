class beru{
public PVector posicion;
public PImage imagen;
public PVector hormiga;

public void beru(){
  imagen=loadImage("beru");
}
public void dibujar(){
  imageMode(CENTER);
  image(imagen,100,100);
}
