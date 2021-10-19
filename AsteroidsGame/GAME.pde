void game() {

  if (pkey) MODE = PAUSE;
  
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
  textSize(40);
  stroke(255);
  textAlign(CENTER);
  text(playerShip.lives, width/2, 100);
  
  //Teleport Timer
    rectMode(CORNER);
    noStroke();
    
    //Timer not done
    if (playerShip.tTimer <= 900) {
      fill(pink);
      rect(50, height - 100, playerShip.tTimer/6, 50);
    }   
    
    //Timer done
    if (playerShip.tTimer > 900) {
      fill(blue);
      rect(50, height - 100, 150, 50);
      
      textSize(18);
      fill(255);
      text("Press SHIFT to Teleport", 125, height - 110);
    }
    noFill();
    strokeWeight(4);
    stroke(255);
    rect(50, height - 100, 150, 50);
    strokeWeight(1);
    rectMode(CENTER);
  
  
  
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
  
}
