class Circle {
 
  
  PVector location = new PVector(0,0);
  PVector velocity = new PVector(0,0);
  PVector acceleration;
  
  Circle() {
    location = new PVector(random(0,width-1), random(0,height-1));
  }
  
  void update(){
    location.add(velocity);
    //acceleration = new PVector(random(-.5,.5), random(-.5, .5));
    //acceleration = randomMousePerlin();
    acceleration = randomMouseGaussian();
    velocity.add(acceleration);
    velocity.limit(5);
    if (location.x > width) {
      location.x = 0;
    }
    else if( location.x < 0) {
     location.x = width; 
    }
    else if( location.y > height) {
     location.y = 0; 
    }
    else if (location.y < 0 ) {
     location.y = height; 
    }
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
}