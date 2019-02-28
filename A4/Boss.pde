class Boss extends Enemy{
  
  float horizontalVel = 0;
  
  Boss(PVector coming){
    super(coming);
      pos = coming;
      vel = new PVector (0,3);
      hp = 7;
  }

  void show(){
    fill(db);
    rect(pos.x,pos.y,50,50);
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
  }
  
  boolean hasDied(){
    return pos.y > height || hp <= 0;
  }
}
