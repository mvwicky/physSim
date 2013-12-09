color white = color(255, 255, 255, 255);
color black = color(0, 0, 0, 255);

point4 nPoint;

void setup() {
  frameRate(60);
  size(1000, 500);
  nPoint = new point4(100, 200, 300 , 0, black);
}

void draw() {
  background(200, 100, 100);
  nPoint.dLine();
}

float calcSlope(point4 line) {
  float slope;
  if (line.getx1() - line.getx0() == 0)
    return 1000000;
  slope = (line.getx1() - line.getx0()) / (line.gety1() - line.gety0());
  return slope;
}
/*
point2 findIntercept(point4 line0, point4 line1) {
 point2 iPoint = new point2(0 , 0);
 return iPoint; 
 }
 */
