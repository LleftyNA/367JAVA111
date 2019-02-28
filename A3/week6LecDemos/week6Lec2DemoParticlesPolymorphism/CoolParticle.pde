class CoolParticle extends Particle {
  //new fields
  color c;
  float dia;
  //a unique constructor for the CoolParticle class
  CoolParticle(float xPos, float yPos, float xVel, float yVel, color c, float dia) {
    //call the constructor of the Particle class with these arguments
    //let the Particle class work for us
    super(xPos, yPos, xVel, yVel);
    //set the values of the new fields
    this.c = c;
    this.dia = dia;
  }

  //override the update method
  void update() {
    //update position
    xPos += xVel;
    yPos += yVel;

    //check walls
    if (xPos - dia/2 < 0 ) {
      xPos = dia/2;
      xVel *= -1;
    }
    if (xPos + dia/2 > width) {
      xPos = width - dia/2;
      xVel *= -1;
    }
    if (yPos - dia/2 < 0) {
      yPos = dia/2;
      yVel *= -1;
    }
    if (yPos + dia/2 > height) {
      yPos = height - dia/2;
      yVel *= -1;
    }
  }
  //override the draw method of the Particle class
  void drawMe() {
    fill(c);
    pushMatrix();
    translate(xPos, yPos);
    ellipse(0, 0, dia, dia);
    popMatrix();
  }
}