int base=40;
int x,y,PUNTUACION=0;
int posX=-5;
int posY=-5;
int gameOver=0;
void setup()
{
  size(760, 640);
  x=(int)random(width);
  y=height-base;
}
void draw()
{
  if(gameOver==0)
  {
  background(0); 
  text("PUNTUACION:"+PUNTUACION+"00",width/2,height/2);
  rect(mouseX,height-base,200,base);
  ellipse(x,y,10,10);
  x=x+posX;
  y=y+posY;
  if(x<0 | x>width)
  {
    posX=-posX;
  }
  if(y<0)
  {
    posY=-posY;
  }
  if(y>height-base)
  {
    
    if(x>mouseX && x<mouseX+200)
    {
      posY=-posY; 
      PUNTUACION++;
    }
    else
    {
      gameOverSplash();
    }
  }
  }
  else
  {
    background(0,1,0);
    text("PERDISTE",width/2,height/2);
    text("CLICK PARA VOLVER A EMPEZAR",width/2,height/2+20);
  }
}
void gameOverSplash()
{
  gameOver=1;
}
void mouseClicked()
{
  posY=-posY;
  PUNTUACION=0;
  gameOver=0;
}
