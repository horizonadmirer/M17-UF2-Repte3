// Creem un objecte de tipus Mover.
Mover[] objectes = new Mover[60];

void setup() {
  // Fem el setup de la finestra amb una mida de 650 x 500.
  size(650,500);
  // Instànciem cada objecte Mover amb el constructor per defecte amb un for.
  for (int i = 0; i < objectes.length; i++) {
    objectes[i] = new Mover();
  }
}

void draw() {
  // Anem dibuixant el fons de color blanc a cada frame.
  background(255);
  // Cridem els mètodes per anar movent el objecte i dibuixar-lo a través d'un for.
  for (int i = 0; i < objectes.length; i++) {
     objectes[i].update();
     objectes[i].display();
  }
 
}
