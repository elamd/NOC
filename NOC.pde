Circle[] circles = new Circle[128];

void setup() {
  size(800, 600);
  for(int i=0;i<128;i++) {
   circles[i] = new Circle(); 
  }
  //frameRate(1);
  stroke(0);
  strokeWeight(2);
  fill(128);
}

void draw() {
  background(255);
  for(int i=0;i<circles.length;i++) {
    circles[i].update();
    ellipse(circles[i].location.x, circles[i].location.y, 20, 20);
  }
}