class BossBullet extends Bullet{

  BossBullet(PVector pos){
    this.pos = pos;
    vel = new PVector(0, 10);
    hp = 1;
  }
  
  void show(){
    fill(255,0,0);
    rect (pos.x,pos.y,5,5);
  }

  void act(){
    pos.add(vel);
  }

  boolean hasDied(){
    return pos.y > height;
  }
}
