import peasy.*;
// Torus
PeasyCam    cam;
//  Plane Axis x,y,z
int pAx = 500;   
int nAx = -500; 
// it's said that a Torus can be either spherical, rectangular or, hexagonal
void setup() {
  size(640, 800, P3D);
  background(255);
  cam = new PeasyCam(this, 200);
}
void draw() {
  background(255);
  
   strokeWeight(1);
   stroke(0,0,200);line(nAx, 0, 0, pAx, 0, 0); // x
   stroke(0,200,0);line(0, nAx, 0, 0, pAx, 0); // y  
   stroke(200,0,0);line(0, 0, nAx, 0, 0, pAx); // z
  strokeWeight(5);
  
  pushMatrix();
  for (float phi = 0; phi < TWO_PI; phi += 0.1) {
    for (float theta = 0.0; theta < TWO_PI; theta += 0.1) {
      int   r0 = 300;
      int   r1 = 75;
      // Unite Circle formula
      float x = cos(theta) * ( r0 + r1 * cos(phi) );
      float y = sin(theta) * ( r0 + r1 * cos(phi) );
      float z = r1 * sin(phi);
      point(x, y, z);
    }
  }
  popMatrix();
}
