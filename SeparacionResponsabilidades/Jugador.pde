class Jugador{
  private PVector position;
  private int statePlayer;
  private PVector velocity;
  private SpritePlayer spritePlayer;
  
  public Jugador(){
    this.position = new PVector(width/2,height/2);
    this.spritePlayer= new SpritePlayer();
    this.statePlayer=PlayerStateMachine.IDLE;
    this.velocity=new PVector(100,100);
  }
  
  public Jugador(PVector position, PVector velocity){
    this.position=position;
    /*this.spritePlayer= new SpritePlayer();
    this.statePlayer=StateMachinePlayer.IDLE;
    this.velocity=velocity;*/
  }
  
  public void display(){
    spritePlayer.renderPlayer(this.statePlayer, this.position);
  }
  
  public void move(){
    switch(this.statePlayer){
      case PlayerStateMachine.MOVE_RIGHT:{
        int framesPorSegundo = round(frameRate);
        float deltaTime = 1.0/framesPorSegundo;
        this.position.x+=(this.velocity.x*deltaTime);
        break;
      }
    }
  }
  
  
  public void setStatePlayer(int statePlayer){
    this.statePlayer=statePlayer;
  }
  
  public PVector getPosition(){
    return this.position;
  }
  
  public void setPosition(PVector position){
    this.position=position;
  }
  
  public PVector getVelocity(){
    return this.velocity;
  }
}
