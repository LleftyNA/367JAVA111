//a class to describe a particle
class Particle {
  
  //fields
  float xPos, yPos, xVel, yVel;
  //a constructor to initialize the fields above with initial values
  Particle(float xPos, float yPos, float xVel, float yVel) {
    this.xPos = xPos; 
    this.yPos = yPos; 
    this.xVel = xVel; 
    this.yVel = yVel;
  }
  
  //update the state of this particle (movement and collision with walls)
  void update() {
    //update position
    xPos += xVel;
    yPos += yVel;
    
    //check walls
    if (xPos - 16 < 0 || xPos + 16 > width) {
      xVel *= -1;
    }
    if (yPos - 16 < 0 || yPos + 16 > height) {
     yVel *= -1;
    }
  }
  
  //draw the particle
  void drawMe() {
    fill(255, 0, 0, 128);
    pushMatrix();
    translate(xPos, yPos);
    ellipse(0, 0, 32, 32);
    popMatrix();
  }
  
}//Particle class