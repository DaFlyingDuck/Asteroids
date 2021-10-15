class Explosion extends GameObject {
  
 float t;

 Explosion(float j, float k) {
   
   lives = 1;
   t = random(255,355);
   size = int(random(3,7));
   loc = new PVector(j, k);
   vel = new PVector(random(-4,4), random(-4,4));
   
 }

  
 void act() {
   
   loc.add(vel);
   t = t- 4;
   if (t <= 0) lives = 0;
   
   
 }
 
 void show() {
   
   fill(219 + random(-10,10), 70 + random(-10,10), 11 + random(-10,10), t);
   noStroke();
   square(loc.x, loc.y, size);
   
 }
  
}
