//Asteroids

boolean upkey, downkey, leftkey, rightkey, spacekey, shiftkey;
Ship playerShip;
ArrayList<GameObject> myObjects;

int MODE;
final int INTRO = 0;
final int GAME = 1;
final int GAMEOVER = 2;
final int PAUSE = 3;

int timerUFO;
int astNum;
int playTimer;

boolean WIN;


void setup() {
  
  size(800,600);
  imageMode(CENTER);
  rectMode(CENTER);
  
  MODE = INTRO;
  WIN = false;
  
  myObjects = new ArrayList<GameObject>();
  
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
  if (MODE == PAUSE) {
    pause();
  }

}
