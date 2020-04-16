// Creem un objecte Mover
Mover objecte1;

void setup() {
  // Fem el setup de la finestra amb una mida de 650 x 400.
  size(650,400);
  // Instanciem l'objecte1 de tipus Mover.
  objecte1 = new Mover();
}

void draw() {
  // Anem dibuixant el fons de color blanc a cada frame.
  background(255);
  // Fem moure l'objecte.
  objecte1.update();
  // Mentres controlem les vores de la finestra.
  objecte1.checkEdges();
  // I mostrem l'objecte en la pantalla.
  objecte1.display();
}
