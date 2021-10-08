class Fire extends GameObject {
  
  float t; //transparency
  int orange;
  PVector nudge;
  
  Fire() {
    
    lives = 1;
    t = random(200,300);;
    size = int(random(6,10));
    orange = int(random(50,130));
    
    loc = playerShip.loc.copy();
    nudge = playerShip.dir.copy();
    nudge.rotate(PI);
    nudge.setMag(15);
    loc.add(nudge);
    vel = playerShip.dir.copy();
    vel.rotate(radians(180 + random(-12,12))); 
    vel.setMag(3);

    
    
    
    
  }
  
  void act() {
    
    super.act();
    t = t - 4;
    if (t <= 0) lives = 0;
    
    
  }
  
  void show() {
    
    fill(255,orange,0, t);
    noStroke();
    square(loc.x,loc.y, size);
    
  }  
  
}
