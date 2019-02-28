class Star extends GameObject{

  Star(){
    pos = new PVector(random(0,width), 0);
    vel = new PVector(0,random(3,5));
  }
  
  void show(){
    fill(255);
    rect(pos.x,pos.y,vel.y,vel.y);
  }
  
  void act(){
    pos.add(vel);
  }
  
  boolean hasDied(){
    return pos.y > height;
  }
}
