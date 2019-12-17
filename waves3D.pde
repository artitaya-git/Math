// You need peasyCam library to move it around
import peasy.*;
//Water Waves 
PeasyCam    cam;

int s = 10;       // Scalar
int yAmp = 20;
int xAmp = 3;
int pAx = 300;    // Positive Axis 
int nAx = -300;   // Negative Axis 

void setup() {
  size(500, 500, OPENGL);
  background(0);
  cam = new PeasyCam(this, 200);
}
void draw() {
  background(0);
  strokeWeight(1); 
  stroke(255);
  line(nAx, 0  , 0  , pAx, 0  , 0  ); // x
  line(0  , nAx, 0  , 0  , pAx, 0  ); // y  
  line(0  , 0  , nAx, 0  , 0  , pAx); // z 
  
  strokeWeight(1);

  beginShape(POINTS);
  pushMatrix();

  for (float x = -xAmp*TWO_PI; x < xAmp*TWO_PI; x += 0.2) {
    for (float y = -yAmp; y < yAmp; y += 0.2) {
      stroke(255);
      noFill();
      // waves formula 
      float z = sin(x) + cos(y);
      vertex(s* x, s* y, s* z + 10);
    }
  } 
  popMatrix();
  endShape();
}

