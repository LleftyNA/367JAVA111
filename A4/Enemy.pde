class Enemy extends GameObject{
  
  Enemy(PVector coming){
      pos = coming;
      vel = new PVector (0,3);
      hp = 3;
  }

  void show(){
    w = 50;
    h = 50;
    fill(or);
    rect(pos.x,pos.y,w,h);
  }
  
  void act(){
    pos.add(vel);
  }
  
  void update(){
    if (pos.x > width) pos.x = 0;
    if (pos.x < 0) pos.x = width;
    if (pos.y > height) pos.y = 0;
    if (pos.y < 0) pos.y = height;
  }
  
  boolean hasDied(){
    return pos.y > height || hp <= 0;
  }
}
