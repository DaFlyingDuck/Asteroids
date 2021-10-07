class Asteroid extends GameObject {
  
  
  
  
  Asteroid() {
    
    loc = new PVector(random(0, width), random(0, height));
    vel = new PVector(0,1);
    vel.rotate(random(0, TWO_PI));
    
  }
  
  void act() {
    
    super.act();
    
  }
  
  void show() {
    
    noFill();
    stroke(255);
    circle(loc.x,loc.y, 100);
    
  }
  
  

  
}
