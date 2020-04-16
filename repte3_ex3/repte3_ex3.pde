// Creem un objecte Mover.
Mover cercle;
// Creem dos objectes PVector.
PVector vel, acc;

void setup() {
  // Fem el setup de la finestra amb una mida de 650 x 400.
  size(650,400);
  // Inicialitzem els PVectors amb uns valors ràndoms.
  vel = new PVector(random(-1,1),random(-1,1));
  acc = new PVector(random(-1,1),random(-1,1));
  // Instanciem el cercle que és de tipus Mover al centre de la pantalla, 
  // amb una velocitat i acceleració ràndom i mida de 36 per defecte.
  cercle = new Mover(new PVector(width/2,height/2), vel, acc, 36);
}

void draw() {
  // Anem dibuixant el fons de color blanc a cada frame.
  background(255);
  // Fem moure l'objecte.
  cercle.update();
  // Mentres controlem les vores de la finestra.
  cercle.checkEdges();
  // I mostrem l'objecte en la pantalla.
  cercle.display();
  // A cada frame, anem calculant una velocitat i acceleració ràndom.
  vel.x = random(-10,10);   vel.y = random(-10,10);
  acc.x = random(-10,10);   acc.y = random(-10,10);
  // Donem al cercle la nova velocitat i acceleració ràndom.
  cercle.setVelocity(vel);
  cercle.setAcceleration(acc);
}
