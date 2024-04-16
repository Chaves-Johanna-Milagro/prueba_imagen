class beru{
public PVector posicion;
public PImage imagen;
public PVector hormiga;

public void beru1(){
  imagen=loadImage("beru");
  imageMode(CENTER);
  /*image(imagen,100,100);*/
}
/*public void dibujar(){
  imageMode(CENTER);
  image(imagen,100,100);
}*/
public void draw(){
  beru1();
  image(imagen,100,100);
}
}
