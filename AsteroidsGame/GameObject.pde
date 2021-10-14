class GameObject {
  
  int lives;
  PVector loc;
  PVector vel;
  PVector dir;
  int size;
  
  GameObject() {
    
    
  }
  
  void show() {
    
    
  }
  
  void act() {

    loc.add(vel);
    
    // Borders 
    if (loc.x < -25) loc.x = width + 25;
    if (loc.x > width + 25) loc.x = -25;
    if (loc.y < -25) loc.y = height + 25;
    if (loc.y > height + 25) loc.y = -25;
    
  }
  
  
  
}
