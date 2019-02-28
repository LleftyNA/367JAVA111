class Bullet extends GameObject{
  Bullet(){
    pos = myShip.getPos();
    cx = pos.x;
    cy = pos.y;
    vel = new PVector(0,-10);
    hp = 1;
  }
  
  void show(){
    w = 5;
    h = 5;
    fill(255,0,0);
    rect (pos.x,pos.y,w,h);
  }

  void act(){
    pos.add(vel);
  }
  
  

  boolean hasDied(){
    return pos.y < 0;
  }
}
