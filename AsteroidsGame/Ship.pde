class Ship extends GameObject {
  
  int shotTimer, threshold;
  float immune;
  PVector randomloc;
  boolean safe = true;
  int tcheck;
  int tglitch; // stops ship from glitching around
  
  Ship() {
    
   lives = 3; 
   loc = new PVector(width/2, height/2); 
   vel = new PVector(0,0);
   dir = new PVector(0,-0.08);
   shotTimer = 0;
   threshold = 20;
   immune = 60;
    
  }
  
  
  void act() {
    
    super.act();
    
    shotTimer ++;
    immune --;
    
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
    
    //shooting code
    if (shotTimer > threshold) {
      if (spacekey) {
        myObjects.add(new Bullet());
        shotTimer = 0;
      }
    }
    
    //Teleport Code
    tglitch ++;
    if (shiftkey) {
      tglitch = 0;
      immune = 2;
      tcheck = 0;
      boolean safe = false;
      while (safe == false && tcheck < 150) {
        
        //teleport somewhere random
        randomloc = new PVector(random(100,width-100), random(100,height-100));
        
        //if close to asteroid or ufo
        int i = 0;
        safe = true;
        while (i < myObjects.size()) {
          GameObject myObj = myObjects.get(i);
          if (myObj instanceof Asteroid && dist(randomloc.x, randomloc.y, myObj.loc.x, myObj.loc.y) < 250 + myObj.size) {
            safe = false;
          } else if (myObj instanceof UFO && dist(randomloc.x, randomloc.y, myObj.loc.x, myObj.loc.y) < 250 + myObj.size) {
            safe = false;
          } else if (myObj instanceof UFOBullet && dist(randomloc.x, randomloc.y, myObj.loc.x, myObj.loc.y) < 250 + myObj.size){
            safe = false;
          } else {
            //safe = true;
       
          }
          i ++;
          tcheck ++;
        }
      }
      tcheck = 0;
      //successful teleport
      loc = new PVector(randomloc.x, randomloc.y);

    }
            
  }
  
  void show() {
    
    pushMatrix();
    translate(loc.x,loc.y);
    rotate(dir.heading());
    
    // Draw Spaceship
    noFill();
    if (immune >= 0) stroke(255,0,0);
    if (immune < 0) stroke(0,255,0);
    strokeWeight(1);
    //triangle(-25,-25,-25,25,50,0);
    if (tglitch > 4) quad(-15,-15,-9,0,-15,15,30,0);
      
    
    popMatrix();
    
  }
  
  
  
  
}
