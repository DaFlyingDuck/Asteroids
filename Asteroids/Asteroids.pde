//Asteroids

boolean upkey, downkey, leftkey, rightkey, spacekey;
Ship playerShip;
ArrayList<Bullet> myBullets;

void setup() {
  
  size(800,600);
  imageMode(CENTER);
  playerShip = new Ship();
  myBullets = new ArrayList<Bullet>();
  
}


void draw() {
  
  background(0);
  playerShip.show();
  playerShip.act();
  
  int i = 0;
  while (i < myBullets.size()) {
    Bullet b = myBullets.get(i);
    
    b.show();
    b.act();
    
    i ++;
  }
  
  
}
