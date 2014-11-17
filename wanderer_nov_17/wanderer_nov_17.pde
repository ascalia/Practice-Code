float locx,locy;
float velx,vely;
float accx,accy;
int sz=50;
void setup(){
  
  size(800,800);
}
void draw(){
  
  locx=width/2;
  locy=height/2;
  
  //initialize velocity
  velx= random(-5,5);
  vely= random(-5,5);
  
  //initialize acceleration
  
  accx=0;
  accy=0;
}
  void draw(){
    velx+=accx;
   vely += accy;
   //add velcoity to location
   locx+=velx;
   locy+=vely;
   
   ellipse(locs,locy,sz,sz);
   if(locx-sz/2 > 0){
     locx= width + sz/2;
   }
   
   if( locy-sz/2> height){
     locy= -sz/2
