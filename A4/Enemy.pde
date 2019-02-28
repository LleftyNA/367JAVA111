class Enemy extends GameObject{
  
  Enemy(float incomeX, float incomeY){
      cx = incomeX;
      cy = incomeY;
      pos = new PVector (cx,cy);
      vel = new PVector (0,4);
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
    
  int i = 0;
  while (i < engine.size()){
    GameObject thing = engine.get(i);
    if(thing instanceof Bullet){
      if(collision(pos.x - 25,pos.y,w,h,thing.pos.x,thing.pos.y,thing.w,thing.h)){
        hp = hp -1;
        thing.hp = 0;
        for (int j = 0; j < 4; j++){
          engine.add(new Particle(thing.pos.x, thing.pos.y));
        }


    }
    }
    i++;
  }
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
