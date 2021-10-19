void intro() {
  
  
  background(0);
  
  myAst.show();
  
  stroke(255);
  fill(255);
  textSize(90);
  textAlign(CENTER);
  text("Asteroids", width/2, height/2);
  
  rectMode(CENTER);
  fill(0);
  strokeWeight(5);
  if (mouseX > width/2 - 125 && mouseX < width/2 + 125 && mouseY > 375 && mouseY < 450) {
    stroke(pink);
  } else {
    stroke(255);
  }
  rect(width/2, 412, 250, 75);
  if (mouseX > width/2 - 125 && mouseX < width/2 + 125 && mouseY > 375 && mouseY < 450) {
    fill(pink);
  } else {
    fill(255);
  }
  textSize(40);
  text("Click to Start", width/2, 425);
  
  
  
}

void introClicked() {
  
  
  if (mouseX > width/2 - 125 && mouseX < width/2 + 125 && mouseY > 375 && mouseY < 450) {
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
  
}
