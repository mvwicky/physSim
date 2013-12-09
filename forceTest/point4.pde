class point4 extends point2 {
  protected float x1, y1;
  protected float lineLength;
  protected color sColor;
  point4() {
    this(0,0,0,0, color(255, 255, 255 , 255)); 
  }
  point4(float x, float y, float _x, float _y) {
    this(x, y, _x, _y, color(255, 255, 255, 255));
  }
  point4(point2 p0, point2 p1) {
    this(p0.x0(), p0.y0(), p1.x0(), p1.y0(), color(255, 255, 255, 255));
  }
  point4(point2 p0, point2 p1, color cc) { 
    this(p0.x0(), p0.y0(), p1.x0(), p1.y0(), cc);
  }
  point4(float x, float y, float _x, float _y, color cc) {
    super(x, y);
    x1 = _x;
    y1 = _y;
    sColor = cc;
  }
  float x1() {
    return x1;
  }
  float y1() {
    return y1;
  }
  void update(float x , float y , float _x , float _y) {
    x0 = x;
    y0 = y;
    x1 = _x;
    y1 = _y; 
  }
  void update(point2 p0 , point2 p1) {
     x0 = p0.x0();
     y0 = p0.y0();
     x1 = p1.x0(); 
     y1 = p1.y0();
     return;
  }
  void update(point4 p0) {
    x0 = p0.x0();
    y0 = p0.y0();
    x1 = p0.x1();
    y1 = p0.y1();
    return;
  }
  void dLine() {
    stroke(sColor);
    line(x0, y0, x1, y1);
    return; 
  }
}

