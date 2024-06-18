PImage spriteEnemigo;
PImage[] sprites;
int spriteWidth =32;
int spriteHeight =32;
int numFrames=2;
int frameActual=0;
int frameDelay=5;
int frameCount=0;

void setup(){
  size(600,600);
  spriteEnemigo=loadImage("spritesEnemigo.png");
  
  sprites= new PImage[numFrames];
  
  for(int i=0;i<numFrames;i++){
    sprites[i]=spriteEnemigo.get(i*spriteWidth,0,spriteWidth,spriteHeight);
    
  }
}

void draw(){
 background(255);
  image(sprites[frameActual],width/2-spriteWidth/2,height/2-spriteHeight/2);
  
  frameCount++;
  if(frameCount>=frameDelay){
  frameActual=(frameActual+1)%numFrames;
  frameCount=0;
}

}
