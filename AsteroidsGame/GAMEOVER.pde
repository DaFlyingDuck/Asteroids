void gameover() {
  
  background(0);
  textAlign(CENTER);
  
  if (WIN) {
    textSize(50);
    text("YOU WIN", width/2, 200);
  }
  
  if (WIN == false) {
    textSize(50);
    text("YOU LOST", width/2, 200);
  }
  
}

void gameoverClicked() {
  
  MODE = INTRO;
  
  
}
