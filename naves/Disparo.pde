class Disparo{
  private PVector posicion;
  private PImage sprite;
  private float velocidad;
  private int posicionFrameX;
  private int posicionFrameY;
  private int altoFrame;
  private int anchoFrame;
  private int anchoDisparo;
  private int altoDisparo;

  
  public Disparo(PVector posicion, float velocidad){
    sprite = requestImage("resources/images/shoot4.png");
    this.posicion = posicion;
    this.velocidad = velocidad;
    this.anchoFrame = 172;
    this.altoFrame = 250;
    this.posicionFrameX = 156*3;
    this.posicionFrameY = 0;
  }
  
  public void display(){
    PImage frame = sprite.get(this.posicionFrameX,this.posicionFrameY,this.anchoFrame,this.altoFrame);
    frame.resize(20,50);
    imageMode(CENTER);
    image(frame,this.posicion.x,this.posicion.y);
    if(this.posicionFrameY < sprite.height-this.altoFrame){
      posicionFrameY+=this.altoFrame;
    }else{
      posicionFrameY=0;
    }
    move();
  }
  
  /* cambia la posición del disparo*/
  public void move(){
    this.posicion.y-=this.velocidad;
  }
  
  // ---------METODOS ACCESORES----------
  
  public PVector getPosicion(){
    return this.posicion;
  }
  
  public int getAltoDisparo(){
    return this.altoDisparo;
  }
  public void setAltoDisparo(int altoDisparo){
    this.altoDisparo = altoDisparo;
  }
  
  public int getAnchoDisparo(){
    return this.anchoDisparo;
  }
  public void setAnchoDisparo(int anchoDisparo){
    this.anchoDisparo = anchoDisparo;
  }
  
}
