//Asteroids

boolean upkey, downkey, leftkey, rightkey, spacekey, shiftkey, pkey;
Ship playerShip;
ArrayList<GameObject> myObjects;

int MODE;
final int INTRO = 0;
final int GAME = 1;
final int GAMEOVER = 2;
final int PAUSE = 3;

PFont bellerose;
AnimatedGIF myAst;

color pink = #D31996;
color olive = #708D91;
color green = #19DD89;
color blue = #4291D3;

int timerUFO;
int astNum;
int playTimer;

boolean WIN;


void setup() {
  
  size(800,600);
  imageMode(CENTER);
  rectMode(CENTER);
  
  bellerose = createFont("Bellerose.ttf", 1);
  textFont(bellerose);
  myAst = new AnimatedGIF(81, "frame_", "_delay-0.03s.gif");
  
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
