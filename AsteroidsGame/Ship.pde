class Ship extends GameObject {
  
  PVector dir;
  
  
  Ship() {
    
   lives = 3; 
   loc = new PVector(width/2, height/2); 
   vel = new PVector(0,0);
   dir = new PVector(0,-0.1);
    
    
  }
  
  
  void act() {
    
    super.act();
    
    if(upkey) vel.add(dir);
    if (downkey) vel.sub(dir);
    if (leftkey) dir.rotate(radians(-3));
    if (rightkey) dir.rotate(radians(3));
    if (spacekey) myObjects.add(new Bullet());
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
