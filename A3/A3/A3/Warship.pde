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
    else if (a){
      vel.x = -5;
    }
    else if (s){
      vel.y = 5;
    }
    else if (d){
      vel.x = 5;
    }
    else if (j){
      engine.add(new Bullet());
    }
    else{
      vel.x =0;
      vel.y = 0;
    }
    pos.add(vel);
  }
  
  boolean hasDied(){
    return false;
  }
  
}
