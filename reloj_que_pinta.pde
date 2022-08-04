//usaremos esta variable para hacer girar los cuadrados
float i = 0;

float R = 0;
 int ban=0;
void setup(){
 size(300, 300);
 
 rectMode(CENTER);
 
}
 
void draw(){
 

  fill(0, 255, 0);
  
  translate(width/2, height/2);
 
  rotate(i);

  line( 0,0,0,50);
  
  resetMatrix();
  
  stroke(0, 50);
  noFill();
  translate(width/2, height/2);
  rotate(-i/2);
 
  
  i = i + 0.01;
}
