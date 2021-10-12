class UFOBullet extends GameObject {
 
  int timerb;
  
  UFOBullet() {
    
    timerb = 60;
    lives = 1;
    size = 8;
    int j  = 0;
    while (j < myObjects.size()) {
      GameObject myObj = myObjects.get(j);
      if (myObj instanceof UFO) {
        loc.x = myObj.loc.x;
        loc.y = myObj.loc.y;
        vel.x = myObj.loc.x - loc.x;
        vel.y = myObj.loc.y - loc.y;
        j++;
      }
    }
    vel.setMag(6);
    
  }
  
  
  
  
  void act() {
   
    super.act();
    
    timerb --;
    if (timerb == 0) {
      lives = 0;
    }

    
  }
  
  void show() {
    
    stroke(255,0,0);
    noFill();
    circle(loc.x, loc.y, size);
    
    
  }
  
  
  
  
  
  
  
}
