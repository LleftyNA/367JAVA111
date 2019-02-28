class Ship extends GameObject{

  Ship(){
    hp = 20;
    cx = width/2;
    cy = height/2;
    pos = new PVector(cx,cy);
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
    if (j && frameCount % 15 == 0){
      engine.add(new Bullet());
    }
    
    
    pos.add(vel);
    if (pos.x > width || pos.x < 0) 
      if (pos.x > width) pos.x = width - 25;
      else if (pos.x < 0) pos.x = 0 + 25;
    if (pos.y < 0 || pos.y > height) 
      if (pos.y < 0) pos.y = 25;
      else if (pos.y > height) pos.y = height-25;
      
      
        int i = 0;
        while (i < engine.size())
        {
          GameObject thing = engine.get(i);
          if(thing instanceof Enemy || thing instanceof Boss)
          {
            if(collision(pos.x - 25,pos.y,w,h,thing.pos.x,thing.pos.y,thing.w,thing.h))
            {
              hp = hp - 10;
              thing.hp -=1;
              for (int j = 0; j < 4; j++)
              {
                engine.add(new Particle(thing.pos.x, thing.pos.y));
              }


            }
          }
          if(thing instanceof BossBullet){
            if(collision(pos.x - 25,pos.y,w,h,thing.pos.x,thing.pos.y,thing.w,thing.h))
            {
              hp = hp - 1;
              thing.hp =0;
              for (int j = 0; j < 4; j++)
              {
                engine.add(new Particle(thing.pos.x, thing.pos.y));
              }


            }
          }
        i++;
        }
  }
  
  PVector getPos(){
    curpos = new PVector(pos.x,pos.y);
    return curpos;
  }
  
  boolean hasDied(){
    return hp <=0;
  }
  
}
