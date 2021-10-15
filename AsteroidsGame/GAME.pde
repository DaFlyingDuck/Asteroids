void game() {
  
  timerUFO ++;
  if (timerUFO >= 1000) {
    myObjects.add(new UFO());
    timerUFO = 0;
  }
  
  background(0);
  println(playerShip.lives);
  
  
  
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
  
  if (playerShip.lives <= 0) MODE = GAMEOVER;
  
}
