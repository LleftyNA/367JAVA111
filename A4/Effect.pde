class Particle extends GameObject{

  Particle(float inx, float iny){
    cx = inx;
    cy = iny;
    dx = random(-5,5);
    dy = random(-5,5);
    hp = random(100,255);
  }


  void show(){
    fill(or,hp);
    rect(cx, cy, 5, 5);
  
  
  }
  
  void act(){
    cx = cx + dx;
    cy = cy + dy;
    
    hp = hp - 2;
  
  
  }
  
  boolean hasDied(){
  
    return hp <=0;
  }
}
