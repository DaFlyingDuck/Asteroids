class Ship {
  
  PVector loc;
  PVector vel;
  PVector dir;
  
  int lives;
  
  Ship() {
    
   lives = 3; 
   loc = new PVector(width/2, height/2); 
   vel = new PVector(0,0);
   dir = new PVector(0,-0.1);
    
    
  }
  
  
  void act() {
    
    loc.add(vel);
    
    if(upkey) vel.add(dir);
    if (downkey) vel.sub(dir);
    if (leftkey) dir.rotate(radians(-3));
    if (rightkey) dir.rotate(radians(3));
    if (spacekey) myBullets.add(new Bullet());
    
    // Borders 
    if (loc.x < -25) loc.x = width + 25;
    if (loc.x > width + 25) loc.x = -25;
    if (loc.y < -25) loc.y = height + 25;
    if (loc.y > height + 25) loc.y = -25;
    
    
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
