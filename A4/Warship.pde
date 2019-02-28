class Ship extends GameObject{
 
  Ship(){

    pos = new PVector(width/2,height/2);
    vel = new PVector(0,0);
  }

  void show(){
    w = 50;
    h = 50;
    fill(0, 255, 0);
    rect(pos.x,pos.y,w,h);
  }
  
  void act(){
    if (wk){
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
    else{
      vel.x =0;
      vel.y = 0;
    }
    if (j && frameCount % 10 == 0){
      engine.add(new Bullet());
    }
    
    pos.add(vel);
  }
  
  PVector getPos(){
    curpos = new PVector(pos.x,pos.y);
    return curpos;
  }
  
  boolean hasDied(){
    return false;
  }
  
}
