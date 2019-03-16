ArrayList<GameObject> engine;
boolean space, left, right;
Player myPlayer;

void setup(){
  size(1200,600,FX2D);
  background(255,255,255);
  engine = new ArrayList<GameObject>(10000);
  rectMode(CENTER);
  engine.add(new Canon(50,550));
  engine.add(new Canon(150,550));
  engine.add(new Canon(250,550));
  myPlayer = new Player();
  engine.add(myPlayer);
}

void draw(){
  bar();
  int i = engine.size() - 1;
  while (i >= 0) {
    GameObject obj = engine.get(i);
    obj.show();
    obj.act();
    if(obj.died()){
      engine.remove(i);
    }
    i--;
  }
}

void keyPressed(){
  if(key == CODED){
    if(keyCode == LEFT){
      left = true;
    }
    if(keyCode == RIGHT){
      right = true;
    }
  }
  if(key == ' '){
    space = true;
  }

}

void keyReleased(){
   if(key == CODED){
    if(keyCode == LEFT){
      left = false;
    }
    if(keyCode == RIGHT){
      right = false;
    }
  }
  if(key == ' '){
    space = false;
  }

}
