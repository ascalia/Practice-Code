int hour= 12;
int minute= 1;
int second=1;

void setup(){
size(600,600);
textSize(100);
textAlign(CENTER);
  background(0);
}

void draw() {
   stroke(0,255,0);
 fill(250,0,0);
  strokeWeight(20);
  rect(70,200,480,130);
  
 
  
  hour=hour ();
  minute= minute();
  second=second();
  fill(0,255,0);
  text(hour + ":" + minute+"."+ second, width/2, height/2);
}
