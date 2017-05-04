class Circle {
 
  
  PVector location     = new PVector(random(0,width-1), random(0,height-1));
  PVector velocity     = new PVector(randomGaussian()*3, randomGaussian()*3);
  PVector acceleration = new PVector(0,0);
  PVector force        = new PVector(0,0); 
  
  void update(){
    location.add(velocity);
    //acceleration = randomMouseGaussian();
    velocity.add(acceleration);
    acceleration.add(force);
    velocity.limit(5);
    if ( location.x < 0 || location.x > width) {
      velocity = new PVector(-velocity.x, velocity.y);
    }
    else if( location.y < 0 || location.y > height) {
      velocity = new PVector(velocity.x, -velocity.y);
    }
  }
  
  void addForce(PVector force) {
   this.force.add(force); 
  }
  
  void addLocation() {
    location.add(velocity);  
  }
  
  void addAcceleration() {
    velocity.add(acceleration);
  }
  
  void addForce() {
    acceleration.add(force);
  }
  
  PVector randomMouse() {
    float x = map(mouseX, 0, width-1, -.5,.5);
    float y = map(mouseY, 0, height-1, -.5,.5);
    PVector p = new PVector(x,y);
    return p;
  }
  
  PVector randomMouseGaussian() {
   PVector p = new PVector(randomGaussian(), randomGaussian());
   return p;
  }
  
  PVector randomMousePerlin() {
   PVector p = new PVector(noise(mouseX), noise(mouseY));
   return p;
  }
  
  PVector accelerateToMouse() {
   PVector m = new PVector(mouseX, mouseY);
   m.sub(location);
   m.setMag(1);
   return m;
  }
}