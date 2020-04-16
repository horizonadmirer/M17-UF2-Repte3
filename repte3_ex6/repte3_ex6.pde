// Creem un array de 250 gotes d'aigua.
GotaPluja[] gp  = new GotaPluja[250];
// Creem un array de 3 guardians.
Guardia gua[] = new Guardia[3];
// Creem un array de 5 insectes que segueixen el punter.
InsecteSeguidor is[] = new InsecteSeguidor[5];
void setup(){
  // Creem una finestra amb una mida per defecte de 900 x 600.
  size(900,600);
  // Adjustem el frame rate a 60fps.
  frameRate(60);
  // Instànciem totes les gotes d'aigua amb un for.
  for(int i = 0; i < gp.length; i++) {
    gp[i] = new GotaPluja();
  }
  // Instànciem tots els guardians amb un for.
  for(int i = 0; i < gua.length; i++) {
    gua[i] = new Guardia();
  }
  // Instànciem tots els insectes que et segueixen amb un for.
  for(int i = 0; i < is.length; i++) {
    is[i] = new InsecteSeguidor();
  }
}

void draw(){
  // Pintem el fons a blanc a cada frame.
  background(255);
  // Dibuixem un Sol al extrem superior dret de color groc.
  stroke(255,220,0);
  fill(255,220,0);
  ellipse(width-200,height-(height-100),80,80);
  
  // A través d'un for, anem cridant els mètodes de cada objecte
  // de l'escena que són necessaris per realitzar les seves finalitats.
  for(int i = 0; i < gua.length; i++) {
    gua[i].update();
    gua[i].checkEdges();
    gua[i].display();
  }
  
  for(int i = 0; i < gp.length; i++) {
    gp[i].update();
    gp[i].checkEdges();
    gp[i].display();
  }
  
  for(int i = 0; i < is.length; i++) {
    is[i].update();
    is[i].display();
  }
}
