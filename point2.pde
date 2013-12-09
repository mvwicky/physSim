class point2 {
  protected int x0, y0;  
  point2(int x, int y) {
    x0 = x;
    y0 = height - y;
  }
  int getx0() {
    return x0;
  }
  int gety0() {
    return y0;
  }
  void update(int x, int y) {
    x0 = x;
    y0 = height - y;
    return;
  }
  void update(point2 p0) {
    x0 = p0.getx0();
    y0 = height - p0.gety0();
    return;
  }
  void dPoint() {
    point(x0, y0); 
  }
}

