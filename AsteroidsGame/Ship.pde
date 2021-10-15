class Ship extends GameObject {
  
  int shotTimer, threshold;
  
  Ship() {
    
   lives = 3; 
   loc = new PVector(width/2, height/2); 
   vel = new PVector(0,0);
   dir = new PVector(0,-0.08);
   shotTimer = 0;
   threshold = 20;
    
  }
  
  
  void act() {
    
    super.act();
    
    shotTimer ++;
    
    //movement code
    if(upkey) {
      vel.add(dir);
      myObjects.add(new Fire());
    } else {
      vel.setMag(vel.mag() * 0.999);
    }
    if (downkey) vel.sub(dir);
    if (leftkey) dir.rotate(radians(-3));
    if (rightkey) dir.rotate(radians(3));
    if (shotTimer > threshold) {
      if (spacekey) {
        myObjects.add(new Bullet());
        shotTimer = 0;
      }
    }
    
    //Teleport Code
    if (shiftkey) {
      
      
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
    //triangle(-25,-25,-25,25,50,0);
    quad(-20,-20,-13,0,-20,20,40,0);
      
    
    popMatrix();
    
  }
  
  
  
  
}
