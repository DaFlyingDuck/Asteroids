//Asteroids

boolean upkey, downkey, leftkey, rightkey, spacekey;
Ship playerShip;
ArrayList<GameObject> myObjects;

void setup() {
  
  size(800,600);
  imageMode(CENTER);
  playerShip = new Ship();
  myObjects = new ArrayList<GameObject>();
  myObjects.add(playerShip);
  myObjects.add(new Asteroid());
  myObjects.add(new Asteroid());
  myObjects.add(new Asteroid());
}


void draw() {
  
  background(0);
  
  int i = 0;
  while (i < myObjects.size()) {
    GameObject myObj = myObjects.get(i);
    
    myObj.show();
    myObj.act();
    
    i ++;
  }
  
  
}
