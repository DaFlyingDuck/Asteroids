//Asteroids

boolean upkey, downkey, leftkey, rightkey, spacekey;
Ship playerShip;
ArrayList<GameObject> myObjects;

void setup() {
  
  size(800,600);
  imageMode(CENTER);
  rectMode(CENTER);
  playerShip = new Ship();
  myObjects = new ArrayList<GameObject>();
  myObjects.add(playerShip);
  myObjects.add(new Asteroid());
  myObjects.add(new Asteroid());
  myObjects.add(new Asteroid());
}


void draw() {
  
  background(0);
  println(myObjects.size());
  
  int i = 0;
  while (i < myObjects.size()) {
    GameObject myObj = myObjects.get(i);
    
    myObj.show();
    myObj.act();
    
    if (myObj.lives == 0) {
      myObjects.remove(i);
    } else {
      i ++;
    } 
  }
  
  
}