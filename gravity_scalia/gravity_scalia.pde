float x,y, x2,velocityX, acceleration,velocityY;
int sz= 50;
void setup(){
  size(800,800);
  x= 550;
  x2=200;
  y=(height/2)*.1;
  velocityX= 1.7;
  velocityY=  1.2;
  acceleration=.9;
  
}
void draw(){
  background(0);
  fill(255,0,0);
  ellipse(x,y,sz,sz);
  ellipse(x2,y,sz,sz);
  velocityY+= acceleration;
  x+=velocityX;
  y+= velocityY;
  if(y+ sz/2 > height){ 
    velocityY = -abs(velocityY);
    if(x<=height){ 
      velocityX= -abs(velocityX);
      if (x>height){
        velocityX= -abs(velocityX);
      }
    }
  }
}
  
  
