class UFO extends GameObject {
  
  int randomEdge1;
  int randomEdge2;
  int bulletTimer;
  float size;
  
  
  UFO() {
    
    lives = 1;
    size = 40;
    bulletTimer = 0;
    randomEdge1 = int(random(1,3));
    randomEdge2 = int(random(1,3));
    if (randomEdge1 == 1 && randomEdge2 == 1) loc = new PVector(0 - random(30,50), random(0,height));
    if (randomEdge1 == 1 && randomEdge2 == 2) loc = new PVector(width + random(30,50), random(0,height));
    if (randomEdge1 == 2 && randomEdge2 == 1) loc = new PVector(random(0,width), 0 - random(30,50));
    if (randomEdge1 == 2 && randomEdge2 == 2) loc = new PVector(random(0,width), height + random(30,50));
    
    vel = new PVector(playerShip.loc.x - loc.x, playerShip.loc.y - loc.y);
    vel.setMag(1.5);
    

  }
  
  void act() {
    //no super.act() because it has to disappear when it goes offscreen instead of coming back from the other side
    
    loc.add(vel);
    bulletTimer ++;
    if (bulletTimer >= 60) {
      myObjects.add(new UFOBullet(loc.x, loc.y));
      bulletTimer = 0;
    }
    
    if (loc.x < -55) lives = 0;
    if (loc.x > width + 55) lives = 0;
    if (loc.y < -55) loc.y = lives = 0;
    if (loc.y > height + 55) lives = 0;
  
    int k = 0;
    while (k < myObjects.size()) {
      GameObject myObj = myObjects.get(k);
      if (myObj instanceof Bullet) {
        if (dist(loc.x, loc.y, myObj.loc.x, myObj.loc.y) <= size/2 + myObj.size/2) {
          myObj.lives = 0;
          lives = 0;
        }
      }
      
      k ++;
    }
    
  }
  
  void show() {
    
    circle(loc.x,loc.y, size);
    
  }
  
  
  
  
  
  
  
  
  
  
  
  
}
