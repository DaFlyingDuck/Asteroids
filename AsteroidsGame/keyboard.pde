void keyPressed() {
  
  if (keyCode == UP) upkey = true;
  if (keyCode == DOWN) downkey = true;
  if (keyCode == LEFT) leftkey = true;
  if (keyCode == RIGHT) rightkey = true;
  if (keyCode == ' ') spacekey = true;
  if (keyCode == SHIFT) shiftkey = true;
  if (keyCode == 'P') pkey = true;
  
}

void keyReleased() {
  
  if (keyCode == UP) upkey = false;
  if (keyCode == DOWN) downkey = false;
  if (keyCode == LEFT) leftkey = false;
  if (keyCode == RIGHT) rightkey = false;
  if (keyCode == ' ') spacekey = false;
  if (keyCode == SHIFT) shiftkey = false;
  if (keyCode == 'P') pkey = false;
  
}

void mouseReleased() {
  
  if (MODE == INTRO) introClicked();
  if (MODE == GAME) gameClicked();
  if (MODE == GAMEOVER) gameoverClicked();
  if (MODE == PAUSE) pauseClicked();
  
  
}
