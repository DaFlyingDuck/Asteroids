//Asteroids

boolean upkey, downkey, leftkey, rightkey, spacekey;
Ship playerShip;
ArrayList<GameObject> myObjects;

int MODE;
final int INTRO = 0;
final int GAME = 1;
final int GAMEOVER = 2;


void setup() {
  
  size(800,600);
  imageMode(CENTER);
  rectMode(CENTER);
  
  MODE = GAME;
  
  playerShip = new Ship();
  myObjects = new ArrayList<GameObject>();
  myObjects.add(playerShip);
  myObjects.add(new Asteroid());
  myObjects.add(new Asteroid());
  myObjects.add(new Asteroid());
  myObjects.add(new UFO());
}


void draw() {
  
  if (MODE == INTRO) {
    intro();
  }
  if (MODE == GAME) {
    game();
  }
  if (MODE == GAMEOVER) {
    gameover();
  }

  
  
}
