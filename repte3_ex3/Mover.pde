class Mover {
  PVector location;
  PVector velocity;
  PVector acceleration;
  float topSpeed;
  int sizeEllipse;
  
  Mover() {
    location = new PVector(random(width),random(height));
    velocity = new PVector(random(-2,2),random(-2,2));
    // Creem un nou PVector una acceleració negativa al eix X.
    acceleration = new PVector(-0.001,0.01);
    topSpeed = 5; // Velocitat màxima que podrà tenir l'objecte.
    sizeEllipse = 16;
  }
  
  Mover(PVector ubicacio, PVector velocitat, PVector acceleracio, int midaCercle) {
    location = ubicacio;
    velocity = velocitat;
    acceleration = acceleracio;
    
    if(midaCercle > 0) {
      sizeEllipse = midaCercle;
    } else {
      topSpeed = 16;
    }
    
  }
  
  void update() {
    location.add(velocity);
    velocity.add(acceleration);
    //velocity.limit(topSpeed); 
  }
  
  void display() {
    stroke(0);
    fill(175);
    ellipse(location.x,location.y,sizeEllipse,sizeEllipse);
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
  
  // Mètodes per posar un nou PVector com a velociat i acceleració.
  void setVelocity(PVector v) {
    velocity = v;
  }
  void setAcceleration(PVector a) {
    acceleration = a;
  }
}
