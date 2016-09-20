// Beginning of Mathematics lets make the unit circle
void setup() {
  size(640, 800);
  background(255);strokeWeight(5);stroke(0);
}
void draw(){
  translate(width/2, height/2);
  for (float theta = 0.0; theta < TWO_PI; theta += PI/6) {
    
    int   r = 200;
    // Unite Circle formula
    float x = r * cos(theta);
    float y = r * sin(theta);
    point(x, y);
  }
}