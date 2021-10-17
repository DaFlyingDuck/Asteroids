void intro() {
  
  
  background(0);
  
  stroke(255);
  fill(255);
  textSize(80);
  textAlign(CENTER);
  text("Asteroids", width/2, height/2);
  
  
  
}

void introClicked() {
  
  MODE = GAME;
  //Delete all gameobjects from previous game
  int i = 0;
  while (i < myObjects.size()) {
     myObjects.remove(i);
  }
  
  astNum = 0;
  playerShip = new Ship();
  myObjects.add(playerShip);
  myObjects.add(new Asteroid());
  myObjects.add(new Asteroid());
  myObjects.add(new Asteroid());
  myObjects.add(new Asteroid());

  playTimer = 0;
  timerUFO = 600;
  
}
