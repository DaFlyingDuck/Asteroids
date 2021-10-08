class Ship extends GameObject {
  
  PVector dir;
  int shotTimer, threshold;
  
  Ship() {
    
   lives = 3; 
   loc = new PVector(width/2, height/2); 
   vel = new PVector(0,0);
   dir = new PVector(0,-0.1);
   shotTimer = 0;
   threshold = 20;
    
  }
  
  
  void act() {
    
    super.act();
    
    shotTimer ++;
    
    if(upkey) vel.add(dir);
    if (downkey) vel.sub(dir);
    if (leftkey) dir.rotate(radians(-3));
    if (rightkey) dir.rotate(radians(3));
    if (shotTimer >= threshold) {
      if (spacekey) myObjects.add(new Bullet());
      shotTimer = 0;
    }
  }
  
  void show() {
    
    pushMatrix();
    translate(loc.x,loc.y);
    rotate(dir.heading());
    
    // Draw Spaceship
    noFill();
    stroke(255);
    strokeWeight(1);
    triangle(-25,-25,-25,25,50,0);
      
    
    popMatrix();
    
  }
  
  
  
  
}
