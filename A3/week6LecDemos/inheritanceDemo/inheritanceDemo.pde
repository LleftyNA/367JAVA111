void setup() {
  size(400, 400);
  PFont arial = loadFont("Arial-BoldMT-48.vlw");
  textFont(arial, 18); 

 //Video vio = new Video("Microcosmos", 90 ); 

 //Movie mov = new Movie("Avatar", 120, "Cameron", "PG" );
  
 //vio.show(20, 20);   //Outputs: 
 //mov.show(20, 50);

 //Video vio;
 //vio = new Video("Microcosmos", 90 ); 
 //vio.show(20, 20);
  
 //vio = new Movie("Avatar", 120, "Cameron", "PG" ); 
 //vio.show(20, 60);  
 
 //vio = new MusicVideo ("Dangerous", 20, "Jackson", "pop" ); 
 //vio.show(20, 120);

  Video [ ] videos = new Video[3];
  videos[0] = new Video("Microcosmos", 90 ); 
  videos[1] = new Movie("Avatar", 120, "Cameron", "PG" ); 
  videos[2] = new MusicVideo ("Dangerous", 20, "Jackson", "pop" ); 


  for (int i = 0; i < videos.length; i++) {
   videos[i].show(20, (i+1)*50);  //display data as per the actual objects
  }

}