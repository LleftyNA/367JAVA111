// create UFO class
class UFO {

  final int UFO_WIDTH = 100;
  final int UFO_HEIGHT = 25; 

  int xPos = 0;
  int yPos = 0;
  int xSpeed = 0;
  int ySpeed = 0;
  int rotAngle = 0;
  float scaleFactor = 1;

  // UFO constrctor
  UFO(int xPos, int yPos, int xSpeed, int ySpeed, int rotAngle) {
    this.xPos = xPos;
    this.yPos = yPos;
    this.xSpeed = xSpeed;
    this.ySpeed = ySpeed;
    this.rotAngle = rotAngle;
  }

  // Method to create the UFO 
  void drawMe() {
    fill(255);
    pushMatrix();
    translate(xPos, yPos);
    scale(scaleFactor);
    fill(150, 150, 0, 150);
    arc(0, 0, UFO_WIDTH, UFO_HEIGHT*2, 0, PI);
    arc(0, 0, UFO_WIDTH*2, UFO_HEIGHT, 0, 2*PI);
    arc(0, 0, UFO_WIDTH*1.5, UFO_HEIGHT*4, PI, 2*PI);
    popMatrix();
  }
  
  // update method to change x, y positions
  void update() {
    xPos += xSpeed;
    yPos += ySpeed;

    // To bounce off edges of screen 
    if (xPos - UFO_WIDTH/2*scaleFactor < 0 || xPos + UFO_WIDTH/2*scaleFactor > width) {
      xSpeed *= -1;
    }

    if (yPos - UFO_HEIGHT/2*scaleFactor  < 0 || yPos + UFO_HEIGHT/2*scaleFactor > height) {
      ySpeed *= -1;
    }
  }
  
  boolean isClicked(int x, int y) {
    if (mousePressed && 
        xPos - UFO_WIDTH/2 < x && xPos + UFO_WIDTH/2 > x &&
        yPos - UFO_HEIGHT/2  < y && yPos + UFO_HEIGHT/2 > y) {
      return true;
    }
    
    return false;
  }
}