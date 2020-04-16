// Classe GotaPluja que representa una Gota de Pluja que té una ubicació inicial ràndom
// i una velocitat inicial de 0. Després es dona una acceleració en el eix de les Y.
class GotaPluja {
  PVector ubicacio;
  PVector velocitat;
  GotaPluja() {
    ubicacio = new PVector(random(width),random(height));
    velocitat = new PVector(0,0);
  }
  void display() {
    stroke(255);
    fill(18,101,202);
    ellipse(ubicacio.x,ubicacio.y,4,16);
  }
  
  void update() {
    ubicacio.add(velocitat);
    velocitat.add(new PVector(0,1));
    velocitat.limit(10);
  }
  
  void checkEdges() {
    if(ubicacio.x > width) {
      ubicacio.x = 0;
    }
    else if(ubicacio.x < 0) {
      ubicacio.x = width;
    }
    
    if(ubicacio.y > height) {
      ubicacio.y = 0;
    }
    else if(ubicacio.y < 0) {
      ubicacio.y = height;
    }
  }
}
