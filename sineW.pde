void setup() {
	size(800, 800);
}

void draw() {
	background(0);
	translate(0, height/2);
	sineWave();
}

void sineWave(){
	PVector v;
	float x, y;
	int r = 100;

	stroke(255);
	
	for (float t = 0.0; t < TWO_PI; t+=PI/100) {
		x = r*t ;
		y = r * sin(t);

		v = new PVector(x,y);
		point(v.x, v.y);
	}
}