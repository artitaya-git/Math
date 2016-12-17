int total = 10;

ArrayList<Particle> pl;

void setup() {
  size(640, 360);

  pl =  new ArrayList<Particle>();
}

void draw() {
  background(0);
  
  pl.add(new Particle(new PVector(width/2,50)) );

  for (int i = 0; i < pl.size(); ++i) {
    Particle p = pl.get(i);
    p.run();
  }
  


}

class Particle {
  PVector location;
  PVector velocity;
  PVector acceleration;

  float lifespan;

  Particle(PVector l){
    location = l.get();
    acceleration = new PVector(0, 0.05);
    velocity = new PVector( random(-1, 1), random(-2, 0) );

    lifespan = 255.0;
  }

  void run() {
    update();
    display();
  }

  void update() {
    velocity.add(acceleration);
    location.add(velocity);
    lifespan -= 2.0;
  }

  void display(){
    stroke(255, lifespan);
    fill(255, lifespan);

    ellipse(location.x, location.y, 8, 8);
  }

  boolean isDead() {
    if (lifespan < 0.0) {
      return true;
    } else {
      return false;
    }
  }
}








