/* Sine formula
Mathematics as well as physics, engineering, singal processing and many other fields.
Its most basic form as a function of time (t) is:

y(t)  = A sin(2PI*f*t + ph) 
      = A sin(wt + ph)

where:
  A = The amplitude, de pick deviation of the function from zero.
  f = Ther ordinary frequency, the number of oscillations (cycles) that occur each seccond of time
  w = 2PI * f, the angular frequency, the rate of change of the cuntion arguments in units of radians per second
  ph = the ph, specifies (in radians) where in its cycle the oscillation is at t = 0.
    when ph is non-zero, the entire waveform appears to be shifter in time by the amount ph/w seconds. 
    A negative value represents a delay, and a positive value represents an advance.
*/

float a   = 200;
float t   = 0.0;
float ph  = 0.0;
float y;

PVector v;

void setup() {
   size(1000, 800);
   background(0);
   stroke(255);
 }
 
 void draw() {
   fill(0, 13);
   rect(0, 0, width, height);
   // y(t) = A sin(wt + ph)
   
   float f   = 0.18;
   float w   = TWO_PI * f;

   for (int x = 0; x < width; ++x) {
     y =height/2 +  a * sin(w*t + ph);

     v = new PVector(x, y);
     
     point(v.x, v.y);
     t += f;    
     //println(t);
   }
 } 
