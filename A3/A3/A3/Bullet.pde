class Bullet extends GameObject{

  Bullet(){
    pos = myShip.pos;
    vel = new PVector(0,-10);
  }
  
  void show(){
    fill(255,0,0);
    rect (pos.x,pos.y,5,5);
  }

  void act(){
    pos.add(vel);
  }

  boolean hasDied(){
    return pos.y < 0;
  }
}
