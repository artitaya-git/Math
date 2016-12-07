// kukovisuals
// Unite circle with diff radius 

void setup() {
	size(512, 800);
}

void draw() {
	background(0);

	translate(width/2, height/2);
	unitCircle();
}

void unitCircle(){
	PVector v;
	float 	x, y, z, t;
	int r; 

	stroke(255); 

	for ( t = 0.0; t < TWO_PI; t +=PI/100) {
		for ( r = 200; r > 0; r -= 10) {

		x = r * sin(t);
		y = r * cos(t);	

		v = new PVector(x,y);
		point(v.x, v.y);
		}
	}
}