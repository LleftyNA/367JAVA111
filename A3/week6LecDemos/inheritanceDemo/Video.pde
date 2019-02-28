class Video {
  String title; // name of the item
  int length;  // number of minutes
  boolean avail = true; // available?

  Video( String ttl, int lngth ) {
    title = ttl; 
    length = lngth;
  }

  void show(int x, int y) {
    fill(0, 0, 200);
    text( title + ", " + length + " min. available: " + avail, x, y);
  }
}