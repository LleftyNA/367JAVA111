
final int NUM_UFO = 10;

ArrayList<UFO> ufos = new ArrayList<UFO>();

void setup() {
  size(800, 800);

  populateArrayList();
}

// draw UFOs by calling DrawMe method and change position calling update method.
void draw() {
  background(255);

  for (int i = 0; i < ufos.size(); i++) {
    UFO ufo = ufos.get(i);
    if (ufo.isClicked(mouseX, mouseY)) {
      destroy(ufo);

      if (ufos.size() == 0) {
        populateArrayList();
      }
    } 
    else {
      ufos.get(i).drawMe(); 
      ufos.get(i).update();
    }
  }
}

void populateArrayList() {
  for (int j = 0; j < NUM_UFO; j++) {    
    ufos.add(new UFO(width/2, height/2, (int)random(2, 10), (int)random(2, 7), (int)random(0, 360)));
  }
  
  ufos.add(new BossUFO(width/2, height/2, (int)random(2, 10), (int)random(2, 7), (int)random(0, 360)));
  ufos.add(new BossUFO(width/2, height/2, (int)random(2, 10), (int)random(2, 7), (int)random(0, 360)));

}

void destroy(UFO ufo) {
  ufos.remove(ufo);
}