void keyPressed() {
  
  if (keyCode == UP) upkey = true;
  if (keyCode == DOWN) downkey = true;
  if (keyCode == LEFT) leftkey = true;
  if (keyCode == RIGHT) rightkey = true;
  if (keyCode == ' ') spacekey = true;
  if (keyCode == CONTROL) shiftkey = true;
  
}

void keyReleased() {
  
  if (keyCode == UP) upkey = false;
  if (keyCode == DOWN) downkey = false;
  if (keyCode == LEFT) leftkey = false;
  if (keyCode == RIGHT) rightkey = false;
  if (keyCode == ' ') spacekey = false;
  if (keyCode == CONTROL) shiftkey = false;
  
}

void mouseClicked() {
  
  if (MODE == INTRO) introClicked();
  if (MODE == GAME) gameClicked();
  if (MODE == GAMEOVER) gameoverClicked();
  if (MODE == PAUSE) pauseClicked();
  
  
}
