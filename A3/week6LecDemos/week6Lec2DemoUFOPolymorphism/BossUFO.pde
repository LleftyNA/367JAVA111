// create BossUFO class
class BossUFO extends UFO {

  int health = 3;
  //Timer used to gurangantee one click only reduce health by 1 (otherwise one click will reduce all the healths)
  int clickTimer = 8; //wait for 8 frames to make BossUFO clickable again
  boolean isClickable = true; 

  // BossUFO constrctor
  BossUFO(int xPos, int yPos, int xSpeed, int ySpeed, int rotAngle) {
    super(xPos, yPos, xSpeed, ySpeed, rotAngle);
  }

  // Method to draw the BossUFO 
  void drawMe() {
    super.drawMe();

    pushMatrix();
    translate(xPos, yPos);
    scale(scaleFactor);
    // Draw eyes
    fill(180, 0, 0);
    ellipse(-40, -20, 20, 20);
    ellipse(40, -20, 20, 20);

    // Draw eyebrows
    fill(0);
    quad(-60, -50, -60, -45, -10, -35, -10, -40);
    quad(60, -50, 60, -45, 10, -35, 10, -40);

    popMatrix();
  }

  void update() {
    super.update();
    if (!isClickable) {
      if (clickTimer == 0) {
        clickTimer = 8;
        isClickable = true;
      }
      clickTimer--;
    }
  }

  boolean isClicked(int x, int y) {
    if (mousePressed && isClickable &&
      xPos - UFO_WIDTH/2 < x && xPos + UFO_WIDTH/2 > x &&
      yPos - UFO_HEIGHT/2  < y && yPos + UFO_HEIGHT/2 > y) {
      health--;
      isClickable = false;
      scaleFactor -= 0.2;
    }

    if (health == 0) {
      return true;
    }

    return false;
  }
}