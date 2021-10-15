class Particles extends GameObject {
  
 float t;

 
  
 Particles(float j, float k) {
   
   lives = 1;
   t = random(255,355);
   size = int(random(3,7));
   loc = new PVector(j, k);
   vel = new PVector(random(-3,3), random(-3,3));
   
 }

  
 void act() {
   
   loc.add(vel);
   t = t- 4;
   if (t <= 0) lives = 0;
   
   
 }
 
 void show() {
   
   fill(100, 100, 100, t);
   noStroke();
   square(loc.x, loc.y, size);
   
 }
  
}
