class Bullet extends GameObject{

  Bullet(){
    x = myPlayer.x;
    y = myPlayer.y;
    dx = 0;
    dy = -10;
  
  }


  void show(){
    fill (0,0,255);
    rect (x,y,5,5);
  }
  
  void act(){
    x += dx;
    y += dy;
    
  
  }
  
  boolean died(){
    return y < 0;
  
  }
}
