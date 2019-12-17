import peasy.*;
PeasyCam  action;
Esfera  punto;

int pAx = 300;    // Positive Axis 
int nAx = -300;   // Negative Axis 

void setup() {
  size(500, 500, P3D);
  action = new PeasyCam(this, 400);
  stroke(255); strokeWeight(1);
}

void draw() {
  background(0);

  line(nAx, 0  , 0  , pAx, 0  , 0  ); // x
  line(0  , nAx, 0  , 0  , pAx, 0  ); // y  
  line(0  , 0  , nAx, 0  , 0  , pAx); // z 
  punto = new Esfera(200,90);

  //saveFrame("v-###.png");
}

class Esfera {
  PVector[][] vector;
  float x, y, z, theta, phi;

  Esfera(int p, int n) {

    vector = new PVector[n][n];
    
    for (int i = 0; i < n; ++i) {
      theta = map(i, 0, n, 0, TWO_PI);

      for (int k = 0; k < n; ++k) {
        phi = map(k, 0, n, 0, PI);

        x = p * cos(theta) * sin(phi);
        y = p * sin(theta) * sin(phi);
        z = p * cos(phi);

        vector[i][k] = new PVector(x, y, z);
        PVector v = vector[i][k];
        
        point(v.x, v.y, v.z);
      }
    }
  }
}
