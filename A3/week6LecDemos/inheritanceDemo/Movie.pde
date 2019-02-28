class Movie extends Video {
  String director; 
  String rating; // G, PG, R, X

  Movie( String ttl, int lngth, String dir, String rating ) { 
    // call super class's constructor 
    super( ttl, lngth); 

    // initialize new fields
    director = dir; 
    this.rating = rating;
  }

  void show(int x, int y) {
  super.show(x, y);
  fill(225, 100, 0);
  text( "director: " + director + ", rating: " + rating, x, y +20 );
  }
}