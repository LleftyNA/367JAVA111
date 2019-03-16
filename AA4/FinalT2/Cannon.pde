class Canon extends GameObject{
  boolean selected;
  Canon(float nx,float ny){
    x = nx;
    y = ny;
    dx = 0;
    dy = 0;
  }
  
  void show(){
    fill(255,0,0);
    rect(x,y,50,50);
  }
  
  void act(){
    dx = dy = 0;
  }
  
  boolean died(){
    return false;
  }

}
