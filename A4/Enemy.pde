class Enemy extends GameObject{
  
  Enemy(PVector coming){
      pos = coming;
      vel = new PVector (0,3);
      hp = 3;
  }

  void show(){
    fill(or);
    rect(pos.x,pos.y,50,50);
  }
  
  void act(){
    pos.add(vel);
  }
  
  boolean hasDied(){
    return pos.y > height || hp <= 0;
  }
}
