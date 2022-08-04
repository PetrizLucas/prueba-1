int x;
int y;
int vx;
int vy;
int yb1;
int yb2;

boolean w,s,i,k;

void setup (){
  //size (1200,590);
  size (450,450);
  x=100;
  y=100;
  vx=3;
  vy=3;

}
void draw (){
background(0,0,0);
noStroke();
 ellipse(x,y,45,45);
 //fill(120,255,120);
 rect(-4,yb1,20,125,100);
 rect(width-15,yb2,18,125,100);
x=x+vx;
y=y+vy;

if(x<30 && y>yb1 && y<yb1+125 && vx<0){
   //println("Rico");
   vx=vx*-1;
}
if(x>width-30 && y>yb2 && y<yb2+125 && vx>0){
   //println("Rico");
   vx=vx*-1;
}

if(x>width || x<0){
 //vx=vx*-1;
 x=width/2;
 

}
if (y>height || y<0){
  vy=vy*-1;

     }
     if(w) {
     yb1=yb1-5;
     }
          if(s) {
     yb1=yb1+5;
     }
          if(i) {
     yb2=yb2-5;
     }
          if(k) {
     yb2=yb2+5;
     }

}

void keyPressed(){
  if(key=='s'){
    s=true;
  }
  if (key=='w'){
    w=true;
  
  }
    if(key=='k'){
    k=true;
  }
  if (key=='i'){
    i=true;
  
  }
}

void keyReleased(){
 if(key=='s'){
    s=false;
  }
  if (key=='w'){
    w=false;
  
  }
    if(key=='k'){
    k=false;
  }
  if (key=='i'){
    i=false;
  }
}  
