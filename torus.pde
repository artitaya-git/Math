import peasy.*;
// Torus
PeasyCam    cam;
int pAx = 400;   
int nAx = -400; 

PImage img;
PFont font;
void setup(){
 size(500,500, P3D);
 smooth();
  cam = new PeasyCam(this, 200);
}

void draw(){
  background(0);

  strokeWeight(1); 
  stroke(255);
  line(nAx, 0  , 0  , pAx, 0  , 0  ); // x
  line(0  , nAx, 0  , 0  , pAx, 0  ); // y  
  line(0  , 0  , nAx, 0  , 0  , pAx); // z 
  
  pushMatrix();
  rotateX(0.0);
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
