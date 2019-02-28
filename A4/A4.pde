ArrayList<GameObject> engine;
boolean wk, a, s, d, j;
Ship myShip;
static int killcount = 0;
int time;

color lb = #67D4FF;
color db = #2F6A96;
color or = #EE7036;

void setup(){
  time = millis();
  
  
  size(600, 600, FX2D);
  engine = new ArrayList<GameObject>(10000);
  rectMode(CENTER);
  myShip = new Ship();
  engine.add(myShip);
  engine.add(new Launcher());
}

void draw(){
  background(0);
  
  
  if (killcount > 0 && killcount % 10 == 0){
    text("Congrats! You have killed " + str(killcount) + " enemies.", 20, 20);
  }

  int i = engine.size()-1;
  
  while (i>=0){
    
    GameObject obj = engine.get(i);
    
    
    obj.show();
    obj.act();
    if (obj.hasDied()){
      engine.remove(i);
      if (obj instanceof Enemy){
          killcount++;
      }
    }
    i--;
  }
  engine.add(new Star());
}

void keyPressed(){
  if(key == 'w' || key == 'W'){
    wk = true;
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
      wk = false;
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
