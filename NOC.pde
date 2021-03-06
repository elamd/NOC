Circle[] circles = new Circle[128];

void setup() {
  size(1920, 1080);
  for(int i=0;i<128;i++) {
   circles[i] = new Circle(); 
  }
  //frameRate(1);
  stroke(0);
  strokeWeight(2);
  fill(128);
  println(width +  "," + height);
}
  void mouseClicked() {
    println("pressed");
    for(int i=0;i<128;i++) {
      circles[i].addForce(new PVector(.1,.1)); 
    }
  }
void draw() {
  background(255);
  for(int i=0;i<circles.length;i++) {
    circles[i].update();
    ellipse(circles[i].location.x, circles[i].location.y, 20, 20);
  }
}