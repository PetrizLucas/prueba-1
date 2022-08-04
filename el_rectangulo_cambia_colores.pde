int R=0;
int ban=0;
void setup()
{
  size(640, 360);
}
  void draw ()
{
  rect(0,0,200,100);
  fill(0,R,0); 

 if (R<255 && ban==0)
 {
  R = R + 1 ;
 
  if (R==255)
  {
  
ban=1 ; 
  }


 }
if (ban==1)
{
  R=R-1;
}
}
