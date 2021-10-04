//Asteroids

boolean upkey, downkey, leftkey, rightkey, spacekey;
Ship playerShip;

void setup() {
  
  size(800,600);
  imageMode(CENTER);
  playerShip = new Ship();
  
}


void draw() {
  
  background(0);
  playerShip.show();
  playerShip.act();
  
  
  
}
