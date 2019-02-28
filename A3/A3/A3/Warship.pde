class Ship extends GameObject{

  Ship(){
    pos = new PVector(width/2,height/2);
    vel = new PVector(0,0);
  }

  void show(){
    fill(0, 255, 0);
    rect(pos.x,pos.y,50,50);
  }
  
  void act(){
    if (w){
      vel.y = -5;
    }
        if (a){
      vel.x = -5;
    }
        if (s){
      vel.y = 5;
    }
        if (d){
      vel.x = 5;
    }
    //if (j){}
    pos.add(vel);
  }
  
  boolean hasDied(){
    return false;
  }
  
}
