class Asteroid extends GameObject {
  
  
  
  //Original Asteroids
  Asteroid() {
    
    lives = 1;
    loc = new PVector(random(0, width), random(0, height));
    vel = new PVector(0,1);
    vel.rotate(random(0, TWO_PI));
    size = 100;
    
  }
  
  //Split Asteroids
  Asteroid(int s, float x, float y) {
    lives = 1;
    loc = new PVector(x,y);
    vel = new PVector(0,1);
    vel.rotate(random(0, TWO_PI));
    size = s;
  }
  
  void act() {
    
    super.act();
    
    //Collision with Bullet
    int i = 0;
    while (i < myObjects.size()) {
      GameObject myObj = myObjects.get(i);
      if (myObj instanceof Bullet) {
        if (dist(loc.x, loc.y, myObj.loc.x, myObj.loc.y) <= size/2 + myObj.size/2) {
          myObj.lives = 0;
          lives = 0;
          if (size > 25) { 
            myObjects.add(new Asteroid(size/2, loc.x, loc.y));
            myObjects.add(new Asteroid(size/2, loc.x, loc.y));
          }
        }
      }
      
      i ++;
    }
    
  }
  
  void show() {
    
    noFill();
    stroke(255);
    circle(loc.x,loc.y, size);
    
  }
  
  

  
}
