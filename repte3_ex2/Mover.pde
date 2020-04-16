class Mover {
  PVector location;
  PVector velocity;
  PVector acceleration;
  float topspeed;
  
  Mover() {
    location = new PVector(random(width),random(height));
    velocity = new PVector(random(-2,2),random(-2,2));
    // Creem un nou PVector una acceleració negativa al eix X.
    acceleration = new PVector(-0.001,0.01);
    topspeed = 5; // Velocitat màxima que podrà tenir l'objecte.
  }
  
  void update() {
    // Variem la posició gràcies a la velocitat.
    location.add(velocity);
    
    // Afegim una acceleració negativa al eix X per tal que 
    // es mogui amb una acceleració descendent, i limitem la seva velocitat a 5.
    velocity.add(acceleration);
    velocity.limit(topspeed); 
  }
  
  void display() {
    stroke(0);
    fill(175);
    ellipse(location.x,location.y,16,16);
  }
  
  void checkEdges() {
    if(location.x > width) {
      location.x = 0;
    }
    else if(location.x < 0) {
      location.x = width;
    }
    
    if(location.y > height) {
      location.y = 0;
    }
    else if(location.y < 0) {
      location.y = height;
    }
  }
}
