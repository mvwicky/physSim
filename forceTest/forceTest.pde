float g = 98;
float dt = 0.02083333333; 

square newSquare;
square secondSquare;

point4 leftWall;
point4 topWall;
point4 rightWall;
point4 bottomWall;

ArrayList<point4> tops;
int numTops = 0;

ArrayList<square> clickedSquares;

void setup() {
  tops = new ArrayList<point4>();
  clickedSquares = new ArrayList<square>();
  size(500, 500);
  frameRate(48);
  newSquare = new square(width/2, 0);
  secondSquare = new square(width/2, 0);
  leftWall = new point4(width, height, width, 0);
  topWall = new point4(0, 0, width, 0);
  tops.add(topWall);
  numTops+=1;
  rightWall = new point4(width, 0, width, height);
  bottomWall = new point4(width, height, 0, height);
}

void draw() {
  background(100, 100, 200);
  for (int n=0;n < clickedSquares.size(); n+=1) {
    try {
      clickedSquares.get(n).dS();
    } 
    catch(NullPointerException e) {
      break;
    }
  }
}


void mouseClicked() {
    println("Square Created");
    clickedSquares.add(new square(mouseX , mouseY));
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == DOWN) 
      exit();
  }
}

