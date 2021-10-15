class UFOBullet extends GameObject {
 
  int timerb;
  
  UFOBullet(float j, float k) {
    
    timerb = 150;
    lives = 1;
    size = 8;
    loc = new PVector(j, k);
    vel = new PVector(playerShip.loc.x - loc.x, playerShip.loc.y - loc.y);
    vel.setMag(3);
    
  }
  
  
  
  
  void act() {
   
    super.act();
    
    timerb --;
    if (timerb == 0) {
      lives = 0;
    }
    
    
    //Collision with Ship
    int j = 0;
    while (j < myObjects.size()) {
       GameObject myObj = myObjects.get(j);
       if (myObj instanceof Ship) {
          if(dist(loc.x, loc.y, myObj.loc.x, myObj.loc.y) < size/2 + 13 && playerShip.immune < 0) {
            lives = 0;
            myObj.lives --;
            playerShip.immune = 60;
            
          }
       }
       
       j ++;
    }

    
  }
  
  void show() {
    
    stroke(255,0,0);
    noFill();
    circle(loc.x, loc.y, size);
    stroke(255);
    
    
  }
  
  
  
  
  
  
  
}
