void game() {

  
  timerUFO ++;
  if (timerUFO >= 1000) {
    myObjects.add(new UFO());
    timerUFO = 0;
  }
  
  playTimer ++;
  if (playTimer > 1200) {
     //myObjects.add(new Asteroid());
     playTimer = 0; 
  }
  
  background(0);
  //println(playerShip.lives);  
  fill(255);
  textSize(49);
  stroke(255);
  text(playerShip.lives, width/2, 100);
  
  
  
  //Go thru all objects
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
  
  //Check number of asteroids left
  int r = 0;
  astNum = 0;
  while (r < myObjects.size()) {
    GameObject myObj = myObjects.get(r);
      if (myObj instanceof Asteroid) {
        astNum ++;
      }
    r ++;
  }
  if (astNum == 0) {
    MODE = GAMEOVER;
    WIN = true;
  }
  
  
  if (playerShip.lives <= 0) {
    MODE = GAMEOVER;
    WIN = false;
  }
  
}


void gameClicked() {
  
  
  MODE = PAUSE;
  
  
}
