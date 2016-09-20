import peasy.*;
PeasyCam  action;
Esfera  punto;

void setup() {
  size(600, 800, OPENGL);
  action = new PeasyCam(this, 400);
  stroke(255); strokeWeight(3);
}

void draw() {
  background(0);

  punto = new Esfera(200, 100);
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
      }
    }

    for (int i = 0; i < n; ++i) {
      for (int k = 0; k < n; ++k) {
        
        PVector v = vector[i][k];
        point(v.x, v.y, v.z);
      }
    }
  }
}