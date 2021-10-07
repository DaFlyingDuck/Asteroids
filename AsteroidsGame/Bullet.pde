class Bullet extends GameObject {
 
  
  
  Bullet() {
    
    lives = 1;
    loc = new PVector(playerShip.loc.x, playerShip.loc.y);
    vel = new PVector(playerShip.dir.x, playerShip.dir.y);
    vel.setMag(8);
    
  }
  
  
  void act() {
   
    super.act();

    
  }
  
  void show() {
    
    stroke(255);
    noFill();
    circle(loc.x, loc.y, 8);
    
    
  }
  
  
  
  
  
  
  
}
