class point2 {
  protected float x0, y0;  
  point2(float x, float y) {
    x0 = x;
    y0 = y;
  }
  float x0() {
    return x0;
  }
  float y0() {
    return y0;
  }
  void update(float x, float y) {
    x0 = x;
    y0 = y;
    return;
  }
  void update(point2 p0) {
    x0 = p0.x0();
    y0 = p0.y0();
    return;
  }
  void dPoint() {
    point(x0, y0); 
  }
}
