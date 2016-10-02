// This is a picture of MOON
// Author: Yunyi Ding, and Caitlin Campodonico.
float inCount; float numTrials;
void setup() {
  background(255);
  size(300, 400);
  smooth();
}
void draw() {
  stroke(0);
  fill(255);
  rect(0, 300, 300, 200);
  textSize(25);
  fill(0);
  text(numTrials, 100, 340);
  text(4*inCount/numTrials, 100, 370);
  runTrials();
}
boolean isIn(float x, float y) {
  // if the point is in the circle, return true
  return(dist(x, y, width/2, width/2)<=width/2);
}
void runOneTrial(float x, float y) {
  if (isIn(x, y)) {
    // if the point is in the cirlce, draw one random color point in the circle
    stroke(random(dist(x, y, width/2, height/2)), random(dist(x, y, width/2, height/2)), 0);
    point(x, y);
    inCount++;
  }
  else {
    //if the point is not in the circle,draw one blue point outside the circle
    stroke(0, 0, random(dist(x, y, width/2, width/2)));
    point(x, y);
  }
  numTrials++;
  println(4*inCount/numTrials);
}
void runTrials() {
  for (int i=0; i<=100; i++) {
    runOneTrial(random(300), random(300));
  }
}

