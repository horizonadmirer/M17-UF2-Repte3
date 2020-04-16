// Classe Guardia que representa una guardià que custodia el sòl. 
// Té una ubicació inicial ràndom, però en el sòl.
// Te una velocitat inicial de 1 en el eix de les X. 
// També es dona una acceleració positiva o negativa en el eix de les X, 
// en funció de quina direcció està anant.
// Com a extra, mostra un petit text en la seva part superior.
class Guardia {
  PVector ubicacio;
  PVector velocitat;
  PVector acceleracio;
  Guardia() {
    ubicacio = new PVector(random(width-60),height-60);
    velocitat = new PVector(1,0);
    acceleracio = new PVector(0.05,0);
  }
  void display() {
    stroke(255);
    fill(15);
    square(ubicacio.x,ubicacio.y,60);
    
    textSize(15);
    fill(255, 0, 0);
    text("Working!", ubicacio.x,ubicacio.y-5);
  }
  
  void update() {
    ubicacio.add(velocitat);
    velocitat.add(acceleracio);
    velocitat.limit(5);
  }
  
  void checkEdges() {
    if(ubicacio.x > width-60) {
      velocitat.x *= -1;
      acceleracio.x *= -1;
    }
    else if(ubicacio.x < 0) {
      velocitat.x *= -1;
      acceleracio.x *= -1;
    }
  }
}
