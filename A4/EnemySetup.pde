class Launcher extends GameObject{

  
  Launcher(){
    pos = new PVector(width/2,100);
    vel = new PVector(0,0);
  }
  
  void show(){
    fill(100);
    ellipse(pos.x,pos.y,100,100);
  }
  
  void act(){
    if(frameCount < 100){
    
    }else if(frameCount < 1000){
      straightLine(100);
    }
    else if (frameCount < 1100){
      straightLine(400);
    }
     else if (frameCount < 1500){
       
     }
  }
  
  void straightLine(float incomingX){
    pos.x = incomingX;
    if (frameCount % 10 == 0){
      engine.add(new Enemy((pos)));
    }
  }
  
  boolean hasDied(){
    return false;
  }
}
