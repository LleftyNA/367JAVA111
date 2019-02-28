class Boss extends Enemy{
  
  float horizontalVel = 0;
  float w,h;
  Boss(float x, float y){
      super(x,y);
      pos = new PVector(x,y);
      vel = new PVector (0,3);
      hp = 7;
  }

  void show(){
    w = 50;
    h = 50;
    fill(db);
    rect(pos.x,pos.y,w,h);
  }
  
  
  void act(){
    if (frameCount % 20 == 0){
        engine.add(new BossBullet(new PVector(pos.x, pos.y)));
    }
    
    if (pos.y > height / 8){
     if (frameCount % 100 == 0){ 
          horizontalVel = random(-2, 2);
      }
       if (pos.x < width / 10){
         horizontalVel = 1.5;
       }
       else if (pos.x > (width - width / 10)){
         horizontalVel = -1.5;
       }
       pos.x += horizontalVel;
         
    }
    else {
       pos.add(vel);
    }
    
  int i = 0;
  while (i < engine.size()){
    GameObject thing = engine.get(i);
    if(thing instanceof Bullet && !(thing instanceof BossBullet)){
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
  

  boolean hasDied(){
    return pos.y > height || hp <= 0;
  }
}
