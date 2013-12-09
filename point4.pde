class point4 extends point2 {
  protected int x1, y1;
  protected float lineLength;
  protected color sColor;
  point4(int x, int y, int _x, int _y) {
    this(x, y, _x, _y, color(255, 255, 255, 255));
  }
  point4(point2 p0, point2 p1) {
    this(p0.getx0(), p0.gety0(), p1.getx0(), p1.gety0(), color(255, 255, 255, 255));
  }
  point4(point2 p0, point2 p1, color cc) { 
    this(p0.getx0(), p0.gety0(), p1.getx0(), p1.gety0(), cc);
  }
  point4(int x, int y, int _x, int _y, color cc) {
    super(x, y);
    x1 = _x;
    y1 = height - _y;
    sColor = cc;
  }
  int getx1() {
    return x1;
  }
  int gety1() {
    return y1;
  }
  void update(int x , int y , int _x , int _y) {
    x0 = x;
    y0 = height - y;
    x1 = _x;
    y1 = height - _y; 
  }
  void update(point2 p0 , point2 p1) {
     x0 = p0.getx0();
     y0 = height - p0.gety0();
     x1 = p1.getx0(); 
     y1 = height - p1.gety0();
     return;
  }
  void update(point4 p0) {
    x0 = p0.getx0();
    y0 = height - p0.gety0();
    x1 = p0.getx1();
    y1 = height - p0.gety1();
    return;
  }
  void dLine() {
    stroke(sColor);
    line(x0, y0, x1, y1);
    return; 
  }
}

