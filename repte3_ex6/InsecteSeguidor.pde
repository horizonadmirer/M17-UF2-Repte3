// Classe InsecteSeguidor que representa un tipus d'insecte que segueix el punter. 
// Hereda de GotaPluja ja que algunes configuracions són molt similars i quan no, es fa una sobreescriptura.
// Com a extra, es crea el seu color de manera ràndom.
class InsecteSeguidor extends GotaPluja {

  PVector acceleracio;
  int[] colorInsecte = new int[3];
  InsecteSeguidor(){
    super();
    colorInsecte[0]= (int)random(255);
    colorInsecte[1]= (int)random(255);
    colorInsecte[2]= (int)random(255);
  }
  @Override
  void update() {
    // Creem i instànciem els PVectors que contenen l'ubicació del mouse 
    // i la direcció que ha de pendre l'objecte.
    PVector mouse = new PVector(mouseX,mouseY);
    PVector dir = PVector.sub(mouse,ubicacio);
    // Normalitzem el vector de direcció.
    dir.normalize();
    dir.mult(0.5);
    // I finalment apliquem l'acceleració i movem l'objecte.
    acceleracio = dir;
    velocitat.add(acceleracio);
    velocitat.limit(4);
    ubicacio.add(velocitat);
  }
  @Override
  void display() {
    stroke(255);
    fill(colorInsecte[0],colorInsecte[1],colorInsecte[2]);
    ellipse(ubicacio.x,ubicacio.y,15,15);
  }
  
}
