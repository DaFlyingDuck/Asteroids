void gameover() {
  
  background(0);
  textAlign(CENTER);
  fill(255);
  
  if (WIN) {
    textSize(50);
    text("YOU WIN", width/2, 200);
  }
  
  if (WIN == false) {
    textSize(50);
    text("YOU LOST", width/2, 200);
  }
  
  textSize(40);
  text("Click to Continue", width/2, 350);
  
}

void gameoverClicked() {
  
  MODE = INTRO;
  
  
}
