ArrayList<Particle> particles = new ArrayList<Particle>();
int count = 50;
void setup() {
  size(600, 600);
  stroke(0, 128);
  strokeWeight(2);
  
  //the ArrayList doesn't have a size yet
  //so we have to set how much we will loop literally
  for (int i = 0; i < count/2; i++) {
    //make a new Particle object, assign to ref. var. newParticle
    Particle newParticle = new Particle(
    //arguments passed to the constructor set the initial values for a Particle object's fields
    //take a look at the parameters for the constructor in the Particle class
    random(16, width - 16), 
    random(16, height - 16), 
    random(-4, 4), 
    random(-4, 4)
      //end of arguments
    );
    
    //add the newParticle object to the ArrayList particles
    particles.add(newParticle);
  }
  
  //NOW ADD SOME COOL PARTICLES!
  for (int i = 0; i < count/2; i++) {
    //make a new CoolParticle object, assign to ref. var. newParticle
    //ASSIGNMENT IS LEGAL WHY?
    //a CoolParticle "is a" Particle because it extends from the Particle class
    Particle newParticle = new CoolParticle(
    //arguments passed to the constructor set the initial values for a Particle object's fields
    //take a look at the parameters for the constructor in the Particle class
    random(16, width - 16), 
    random(16, height - 16), 
    random(-4, 4), 
    random(-4, 4),
    //color and radius arguments for CoolParticle constructor
    color(random(128, 255), random(127), random(63), 64),
    random(16, 128)
      //end of arguments
    );
    
    //add the newParticle object to the ArrayList particles
    particles.add(newParticle);
  }
}

void draw() {
  background(255);
  //loop over all elements in the particles ArrayList, 0 - (particles.size() - 1)
  for (int i = 0; i < particles.size(); i++) {
    //get the current ball in the loop, the ball at position i
    //notice how we cast it as type Particle
    //this is so we can have access to the Particle variables (xPos, yPos, ...)
    //TYPED ARRAYLIST (CHECK DECLARATION AT TOP)
    //NO NEED TO CAST OBJECT TO PARTICLE TYPE!
    Particle curParticle = particles.get(i);
    
    //call the update method of the Particle class
    curParticle.update();
    
    //call the draw method of the Particle class
    curParticle.drawMe();
  }
}