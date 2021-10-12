class Bullet extends GameObject {
 
  int timer;
  
  Bullet() {
    
    timer = 60;
    lives = 1;
    size = 8;
    loc = new PVector(playerShip.loc.x, playerShip.loc.y);
    vel = new PVector(playerShip.dir.x, playerShip.dir.y);
    vel.setMag(8);
    
  }
  
  
  
  
  void act() {
   
    super.act();
    
    timer --;
    if (timer == 0) {
      lives = 0;
    }

    
  }
  
  void show() {
    
    stroke(255);
    noFill();
    circle(loc.x, loc.y, size);
    
    
  }
  
  
  
  
  
  
  
}
