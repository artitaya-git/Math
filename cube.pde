import peasy.*;

PeasyCam cam;

int rTamano = 400;
int rAltura = 200;
int s2 = rAltura/2;
int s  = rTamano/2;

Vector[] vector = new Vector[100];

void setup() {
  size(400, 720, P3D);

  cam = new PeasyCam(this, 100);

  for (int i = 0; i < vector.length; ++i) {
    vector[i] = new Vector();
  }

}

void draw() {
  background(0);

  rotateY( PI / 3.0 );
  
  for (int i = 0; i < vector.length; ++i) {
    vector[i].actualizar();
    vector[i].muestre();
    vector[i].bordes();
  }

  strokeWeight(2);stroke(255);

  box(rTamano,rAltura,rTamano);
}


class Vector 
{
  PVector lugar; 
  PVector velocidad;

  Vector() {

    lugar = new PVector(0, 0, 0);
    velocidad = new PVector(random(-2, 2), random(-2, 2), random(-2, 2));
  }

  void actualizar() {

    lugar.add(velocidad);
  }

  void muestre() {

    stroke(255); strokeWeight(6);
    noFill();
    
    point(lugar.x, lugar.y, lugar.z);
  }

  void bordes() {

    if ( (lugar.x > s) || (lugar.x < -s)) {
      velocidad.x *= -1;
    }
    if ((lugar.y > s2) || (lugar.y < -s2)) {
      velocidad.y *= -1;
    }
    if ( (lugar.z > s) || (lugar.z < -s)) {
      velocidad.z *= -1;
    }
  }
}