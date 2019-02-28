class Launcher extends GameObject{

  
  Launcher(){
    pos = new PVector(width/2,-100);
    vel = new PVector(0,0);
  }
  
  void show(){
    w = 100;
    h = 100;
    fill(100);
    ellipse(pos.x,pos.y,w,h);
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
       randomWave(50);
     }
     else if (frameCount % 800 ==0){
       engine.add(new Boss(pos.x, pos.y));
     }
     else if (frameCount < 10000) {
        randomWave(20);
     }
  }
  
  void straightLine(float incomingX){
    pos.x = incomingX;
    if (frameCount % 100 == 0){
      engine.add(new Enemy(pos.x, pos.y));
    }
  }
  
  void randomWave (float n){
    pos.x = random(50, width-50);
    if(frameCount % n ==0){
      engine.add(new Enemy(pos.x,pos.y));
    
    }
  }
  

  boolean hasDied(){
    return false;
  }
}
