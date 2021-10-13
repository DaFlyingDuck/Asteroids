void game() {
  
  timerUFO ++;
  if (timerUFO >= 1800) {
    myObjects.add(new UFO());
    timerUFO = 0;
  }
  
  background(0);
  println(myObjects.size());
  
  timerUFO ++;
  
  
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
