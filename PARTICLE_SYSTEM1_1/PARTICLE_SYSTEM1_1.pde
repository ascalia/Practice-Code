
ArrayList<water> droplets= new ArrayList<water>();   //listing of multiple objects
PImage faucet, flower;

void setup() {
  noStroke();                         //no outline of droplets
  size(800, 700);
  faucet= loadImage("faucet.png");
  flower= loadImage("flower.png");
}
void draw(){                                                                                          
  if (keyPressed) {       
    if (keyCode== DOWN) {
      droplets.add(new water());     // PRESS DOWN ARROW TO WATER THE FLOWERS!!!
    }
  }
  background(0);
 
  for ( int i = droplets.size ()-1; i>= 0; i--) {
    water currentwater = droplets.get(i);     //droplets will be duplicated i times
    currentwater.display();                  // display proper amount of droplets
    currentwater.move();                    //  allows droplets to be affected by acc and vel
    if (currentwater.evaporate()) {        // if a droplet evaporates, then remove i amount of droplets
      droplets.remove(i);
    }
  }
     image(faucet, width*.70, height*.03);  //display position of faucet
    image(flower, width*.35, height*.5);   // display position of flowers
}
class water {
  PVector loc;
  PVector vel;
  PVector acc;
  float   sz;
  float lifespan;

  water() {
    loc =new PVector(width*.75, height/3); //places opening of faucet right center of screen
    vel =new PVector (-random(-2, 2), -random(-3, -2));  //dispersion of droplets.. x PVector is negative so the stream disperses downward
    acc =new PVector(0, .1);                            //
    sz=12;
    lifespan = 155.0;                                  // frames that the droplets are alive for
  }
  void display() {                                    // display this object 

    fill(0, 150, 240, lifespan);                     // color is blue because of RGB and decreasing lifespan changes opacity of droplets
    ellipse(loc.x, loc.y, sz*.75, sz);               // x size is off a bit to give it the irregular shape of a droplet
  }
  void move() {
    vel.add(acc);                                    
    loc.add(vel);
    lifespan-= 2.0;                                //lifespan reduces 2 units of opacity every frame count
  }

  boolean evaporate () {                         // if lifespan reduces to less than zero, the  the droplet will evaporate and dissapear else, return false and continue decreasing lifespan
    if (lifespan < 0.0) {
      return true;
    } else {
      return false;
    }
  }
}

