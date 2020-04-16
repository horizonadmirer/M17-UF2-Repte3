class Mover {
  PVector location;
  PVector velocity;
  PVector acceleration;
  float topSpeed;
  int sizeEllipse;
  
  Mover() {
    location = new PVector(random(width),random(height));
    velocity = new PVector(random(-2,2),random(-2,2));
    acceleration = new PVector(0.05,0.05);
    topSpeed = 7; // Velocitat màxima que podrà tenir l'objecte.
    sizeEllipse = 28;
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
    // Creem i instànciem els PVectors que contenen l'ubicació del mouse 
    // i la direcció que ha de pendre l'objecte.
    PVector mouse = new PVector(mouseX,mouseY);
    PVector dir = PVector.sub(mouse,location);
    // Normalitzem el vector de direcció.
    dir.normalize();
    dir.mult(0.5);
    // I finalment apliquem l'acceleració i movem l'objecte.
    acceleration = dir;
    velocity.add(acceleration);
    velocity.limit(topSpeed);
    location.add(velocity);
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
