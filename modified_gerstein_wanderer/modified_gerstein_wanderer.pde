PVector loc;        //declare location
PVector vel;        //declare velocity
PVector acc;        //declare acceleration

int sz = 5;

void setup() {
   vel = new PVector(0,0);
   vel= new PVector(14,14) ;
 
  size(800, 800);

  //initialize location variables
  loc =new PVector( width/2, height/2);


  //initialize velocity
 vel = new PVector(0,0);

  //initialize acceleration
 acc = new PVector(random(-.1, .05), random(-.1,.05));
}

void draw() {
  acc.set( random (-.1,.1), random(-.1,.1));

  fill(0,0,0);
  //stroke(frameCount%360, 100, 50);
  //add acceleration to velocity
  vel .add (acc);


  //limit velocity to avoid going uncontrollably fast
  vel.limit(5);


  //add velocity to location
   loc.add(vel);

  //draw a circle
  ellipse(loc.x, loc.y, sz, sz);

  //all of these are written so the ball goes completely off the screen
  if (loc.x - sz/2 > width) {      //if circle goes off of right edge...
    loc.x = -sz/2;                 //...wrap around to left edge
  }

  if (loc.x + sz/2 < 0) {          //if circle goes off of left edge....
    loc.x = width + sz/2;          //...wrap around to right edge
  }

  if (loc.y - sz/2 > height) {     //if circle goes beyond bottom...
    loc.y = -sz/2;                 //...wrap around to top
  }

  if (loc.y + sz/2 < 0) {          //if circle goes beyond top...
    loc.y = height + sz/2;         //...wrap around to bottom
  }
}

