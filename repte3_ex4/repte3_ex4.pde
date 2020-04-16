// Creem un objecte de tipus Mover.
Mover objecte;

void setup() {
  // Fem el setup de la finestra amb una mida de 650 x 500.
  size(650,500);
  // Instànciem l'objecte Mover amb el constructor per defecte.
  objecte = new Mover();
}

void draw() {
  // Anem dibuixant el fons de color blanc a cada frame.
  background(255);
  // Cridem els mètodes per anar movent el objecte i dibuixar-lo.
  objecte.update();
  objecte.display();
 
}
