import peasy.*;

PeasyCam cam;

void setup() {
	size(512, 512, P3D);
	cam = new PeasyCam(this,100);
}

void draw() {
	background(0);
	stroke(255);
	//translate(width/2, height/2);
	strokeWeight(5);


	for (float t = 0; t < 8 * TWO_PI; t += PI/100) {
				
		int r = 10; 
		PVector v = new PVector(r*t * cos(t),r*t * sin(t),r*t);					
	
		point(v.x, v.y, v.z);
	}
}







//	// float  x = r*t * cos(t);
		// float  y = r*t * sin(t); 
		// float  z = r*t;
		// r ++;
