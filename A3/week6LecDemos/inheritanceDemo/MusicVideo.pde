class MusicVideo extends Video {
  //inherited title, length, show()
  String artist; 
  String category;  //classic, folk, rock  

  MusicVideo (String ttl, int lngth, String artist, String cat) { 
    // call super class' constructor 
    super( ttl, lngth); 

    // initialize new fields
    this.artist = artist; 
    category = cat;
  }

  void show(int x, int y) {
  super.show(x, y);
  fill(0, 200, 200);
  text( "artist: " + artist + ", category: " + category, x, y + 20 );
  }
}