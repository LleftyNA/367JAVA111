class Player extends GameObject{

  Player(){
  
    x = 50;
    y = 550;
    dx = 0;
    dy = 0;
   
  }
  
  void show(){
    fill (0, 255, 0);
    rect (x, y, 40, 40);
  }
  
  void act(){
    dx = 0;
    dy = 0;
    if (left) dx = -100;
    if (right) dx = 100;
    if (space) engine.add(new Bullet());
    
    x += dx;
    y += dy;
  }
  
  boolean died(){
    return false;
  }

}
