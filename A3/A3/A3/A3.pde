ArrayList<GameObject> engine;
boolean w, a, s, d, j;
Ship myShip;

void setup(){
  size(600, 600, FX2D);
  engine = new ArrayList<GameObject>(10000);
  rectMode(CENTER);
  myShip = new Ship();
  engine.add(myShip);
}

void draw(){
  background(0);
  int i = engine.size()-1;
  // println(i); //Debugger
  while (i>=0){
    
    GameObject obj = engine.get(i);
    obj.show();
    obj.act();
    if (obj.hasDied()){
      engine.remove(i);
    }
    i--;
  }
  engine.add(new Star());
}

void keyPressed(){
  if(key == 'w' || key == 'W'){
    w = true;
  }
  
    if(key == 'a' || key == 'A'){
    a = true;
  }
  
    if(key == 's' || key == 'S'){
    s = true;
  }
  
    if(key == 'd' || key == 'D'){
    d = true;
  }
  
    if(key == 'j' || key == 'J'){
    j = true;
  }
}

void keyReleased(){
    if(key == 'w' || key == 'W'){
      w = false;
  }
  
      if(key == 'a' || key == 'A'){
    a = false;
  }
  
    if(key == 's' || key == 'S'){
    s = false;
  }
  
    if(key == 'd' || key == 'D'){
    d = false;
  }
  
    if(key == 'j' || key == 'J'){
    j = false;
  }
}
