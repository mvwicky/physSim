FloatList testList;

float testNumber = 50;

void setup() {
  testList = new FloatList();  
  for (int x=0;x<50;x+=1) {
    testList.append(random(255)); 
    println(testList.get(testList.size()-1));
  }
}

void draw() {
  noLoop();
  println(findClosest(testList));
} 

float findClosest(FloatList array, float number) {
  float smallest = array.get(0);
  for (int x=1;x<array.size();x+=1) {
    if (array.get(x) < smallest) 
      smallest = array.get(x);
  }
  return smallest;
}
