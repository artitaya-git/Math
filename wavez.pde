import peasy.*;
// Water Waves 
PeasyCam    cam;

int s = 10;       // Scalar

int pAx = 500;    // Positive Axis 
int nAx = -500;   // Negative Axis 

void setup() {
  size(640, 800, P3D);
  background(255);
  cam = new PeasyCam(this, 200);
}
void draw() {
  background(255);lights();strokeWeight(1); 

  stroke(0,0,200);line(nAx, 0  , 0  , pAx, 0  , 0  ); // x
  stroke(0,200,0);line(0  , nAx, 0  , 0  , pAx, 0  ); // y  
  stroke(200,0,0);line(0  , 0  , nAx, 0  , 0  , pAx); // z 
  
  strokeWeight(5);
  pushMatrix();
  beginShape();

  for (float x = -2*TWO_PI; x < 2*TWO_PI; x += 0.1) {
    for (int y = -20; y < 20; ++y) {
      stroke(#60D9FF,220);noFill();
      // waves formula 
      float z = sin(x);
      vertex(s* x, s* y, s* z);
    }
  } 
  endShape(CLOSE);
  popMatrix();
}