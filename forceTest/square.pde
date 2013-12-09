  class square {
  point2 center;
  float radius;
  point4 leftBound;
  point4 topBound;
  point4 rightBound;
  point4 bottomBound; 
  int topIndex;
  float pv = 0;
  float mass;
  float acc = g;
  float lastVertForce = 0;
  boolean vertLastFrame = false;
  square (point2 p0) {
    this(p0.x0(), p0.y0());
  }
  square(float x, float y) {
    center = new point2(x, y);
    mass = 10;
    radius = 25;
    leftBound = new point4(center.x0()-radius, center.y0()+radius, center.x0()-radius, center.y0()-radius, color(255, 0, 0, 255));
    topBound = new point4(center.x0()-radius, center.y0()-radius, center.x0()+radius, center.y0()-radius, color(255, 0, 0, 255));
    tops.add(topBound);
    topIndex = tops.size()-1;
    numTops += 1;
    rightBound = new point4(center.x0()+radius, center.y0()+radius, center.x0()+radius, center.y0()-radius, color(255, 0, 0, 255));
    bottomBound = new point4(center.x0()-radius, center.y0()+radius, center.x0()+radius, center.y0+radius, color(255, 0, 0, 255));
  }
  void setBounds() {
    leftBound.update(center.x0()-radius, center.y0()+radius, center.x0()-radius, center.y0()-radius);
    topBound.update(center.x0()-radius, center.y0()-radius, center.x0()+radius, center.y0()-radius);
    tops.set(topIndex, topBound);
    rightBound.update(center.x0()+radius, center.y0()+radius, center.x0()+radius, center.y0()-radius);
    bottomBound.update(center.x0()-radius, center.y0()+radius, center.x0()+radius, center.y0+radius);
  }
  float findClosestTop() {
    point4 currentClosest = tops.get(0);
    for (int x=0; x < tops.size(); x+=1) {
      if (tops.get(x).y0() - bottomBound.y0() > 0) { // makes sure that the line it's checking is below
        if (currentClosest.y0() > tops.get(x).y0()) {
          currentClosest = tops.get(x);    
        }
      }
    }
    return currentClosest.y0();
  }
  void dS() {
    updatePosY();
    rectMode(CENTER);
    stroke(0, 0, 0, 255);
    fill(255, 255, 255, 255);
    rect(int(center.x0()), int(center.y0()), 2*radius, 2*radius);
  }
  void drawBounds() {
    leftBound.dLine();
    topBound.dLine();
    rightBound.dLine();
    bottomBound.dLine();
  }
  void updatePosY() {
    float deltaY = 0;
    if (bottomBound.y0() >= bottomWall.y0() && !vertLastFrame) {
      deltaY = 0; 
      return;
    }
    if (bottomBound.y0() < bottomWall.y0() || vertLastFrame) {
      deltaY = dt * (pv + dt * ((lastVertForce - (mass * g)) / mass));
      if (bottomBound.y0() >= bottomWall.y0()) {
        if (deltaY < 0)
          deltaY *= 0;
      }
      vertLastFrame = false;  
      lastVertForce = 0;
    }
    center.update(center.x0(), center.y0() - deltaY);
    pv = deltaY / dt;
    setBounds();
  }
  void updatePosX() {
  }
  void applyVertForce(float force) {
    println("Force Applied: " + force + "N");
    acc = mass/force;
    vertLastFrame = true;
    lastVertForce = force;
  }
}

