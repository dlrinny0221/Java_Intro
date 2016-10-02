/*
This is a toy train.
Author: Yunyi Ding
*/

void setup() {
  // Set the size of the window
  size(300,200);
  println("Go Train, Go!");
}

void draw() {
  // Draw a backgroud
  background(195,245,240,1);
  
  //Draw grass
  strokeWeight(0);
  stroke(139,209,129);
  fill(139,209,129,250);
  rect(0,125,300,200);
  
  // Set a CENTER mode
  ellipseMode(CENTER);
  
  //Draw a locomotive of the train
  //Draw a body of the locomotive
  strokeWeight(0);
  stroke(180,209,53,180);
  fill(180,209,53,180);
  ellipse(32,98,40,40);
  
  strokeWeight(0);
  stroke(124,64,64,230);
  fill(124,64,64,230);
  rect(26,78,60,40);
  
  strokeWeight(0);
  stroke(245,138,190,200);
  fill(245,138,190,200);
  rect(87,58,40,60);
  
  strokeWeight(0);
  stroke(124,64,64,200);
  fill(124,64,64,200);
  rect(83,54,48,4);
  
  // Draw a chimney on the locomotive
  strokeWeight(0);
  stroke(50,126,68,200);
  fill(50,126,68,200);
  rect(40,58,10,20);
  
  strokeWeight(0);
  stroke(196,189,59,200);
  fill(196,189,59,200);
  rect(36,54,18,4);
  
  //Draw some details on the body
  strokeWeight(3);
  stroke(65,173,222,220);
  fill(65,173,222,220);
  line(26,86,85,86);
  
  strokeWeight(1);
  stroke(255);
  fill(240,19,23,220);
  ellipse(36,93,5,5);
  
  strokeWeight(1);
  stroke(255);
  fill(252,127,0,220);
  ellipse(46,93,5,5);
  
  strokeWeight(1);
  stroke(255);
  fill(102,173,28,220);
  ellipse(56,93,5,5);
  
  strokeWeight(1);
  stroke(255);
  fill(184,101,237,220);
  ellipse(66,93,5,5);
  
  strokeWeight(1);
  stroke(255);
  fill(101,224,237,220);
  ellipse(76,93,5,5);
  
  //Draw wheels on the locomotive
  strokeWeight(0);
  stroke(252,18,45,200);
  fill(252,18,45,255);
  ellipse(36,118,20,20);
  
  strokeWeight(0);
  stroke(252,18,45,200);
  fill(252,18,45,255);
  ellipse(116,118,20,20);
  
  strokeWeight(0);
  stroke(252,18,45,200);
  fill(252,240,0,255);
  ellipse(36,118,15,15);
  
  strokeWeight(0);
  stroke(252,18,45,200);
  fill(252,240,0,255);
  ellipse(116,118,15,15);
  
   strokeWeight(0);
  stroke(252,18,45,200);
  fill(252,18,45,255);
  ellipse(36,118,8,8);
  
  strokeWeight(0);
  stroke(252,18,45,200);
  fill(252,18,45,255);
  ellipse(116,118,8,8);
  
  strokeWeight(3);
  stroke(65,173,222,255);
  fill(0,187,252,255);
  line(38,116,114,116);
  
  strokeWeight(3);
  stroke(65,173,222,255);
  fill(0,187,252,255);
  line(38,123,114,123);
  
  //Draw a door in the body
  strokeWeight(0);
  stroke(252,0,51,255);
  fill(252,0,51,255);
  rect(92,64,30,40);
  
  //Draw a window on the door
  strokeWeight(0);
  stroke(252,240,0,255);
  fill(252,240,0,255);
  rect(95,70,22,10);
  
  //Draw some coaches
  //Draw two strings that connect the locomotive and the first coach
  strokeWeight(1.5);
  stroke(173,40,67,255);
  fill(173,40,67,255);
  line(127,88,154,84);
  
  strokeWeight(1.5);
  stroke(173,40,67,255);
  fill(173,40,67,255);
  line(127,98,147,103);
  
  //Draw one of the coaches
  //Draw the body of the first coach
  strokeWeight(2);
  stroke(73,209,53,255);
  fill(252,245,0,255);
  triangle(168,50,145,120,200,120);
  
  //Draw wheels on the first coach
  strokeWeight(0);
  stroke(255,0,4,250);
  fill(255,141,4,250);
  ellipse(145,118,10,10);
  
  strokeWeight(0);
  stroke(255,0,4,250);
  fill(255,141,4,250);
  ellipse(193,118,10,10);
  
  //Draw a string that connects the first coach and the second coach
  strokeWeight(1.5);
  stroke(173,40,67,255);
  fill(173,40,67,255);
  line(190,98,213,93);
  
  //Draw a body of the second coach
  strokeWeight(2);
  stroke(255,111,0,255);
  fill(255,0,183,255);
  rect(210,83,30,30);
  
  //Draw wheels on the second coach
  strokeWeight(0);
  stroke(255,0,4,250);
  fill(255,141,4,250);
  ellipse(210,113,10,10);
  
  strokeWeight(0);
  stroke(255,0,4,250);
  fill(255,141,4,250);
  ellipse(245,106,10,10);
  
  //Draw a pathway
  strokeWeight(2);
  stroke(0);
  fill(0);
  line(0,130,130,130);
  
  strokeWeight(2);
  stroke(0);
  fill(0);
  line(130,130,150,123);
  
  strokeWeight(2);
  stroke(0);
  fill(0);
  line(150,123,198,123);
  
  strokeWeight(2);
  stroke(0);
  fill(0);
  line(198,123,300,100);
  
  strokeWeight(2);
  stroke(0);
  fill(0);
  line(0,150,130,150);
  
  strokeWeight(2);
  stroke(0);
  fill(0);
  line(130,150,150,143);
  
  strokeWeight(2);
  stroke(0);
  fill(0);
  line(150,143,198,143);
  
  strokeWeight(2);
  stroke(0);
  fill(0);
  line(198,143,300,120);
  
  strokeWeight(2);
  stroke(0);
  fill(0);
  line(10,160,10,120);
  
  strokeWeight(2);
  stroke(0);
  fill(0);
  line(15,160,15,120);
  
  strokeWeight(2);
  stroke(0);
  fill(0);
  line(35,155,35,130);
  
  strokeWeight(2);
  stroke(0);
  fill(0);
  line(40,155,40,130);
  
  strokeWeight(2);
  stroke(0);
  fill(0);
  line(55,155,55,130);
  
  strokeWeight(2);
  stroke(0);
  fill(0);
  line(60,155,60,130);
  
  strokeWeight(2);
  stroke(0);
  fill(0);
  line(85,155,85,130);
  
  strokeWeight(2);
  stroke(0);
  fill(0);
  line(90,155,90,130);
  
  strokeWeight(2);
  stroke(0);
  fill(0);
  line(115,155,115,130);
  
  strokeWeight(2);
  stroke(0);
  fill(0);
  line(120,155,120,130);
  
  strokeWeight(2);
  stroke(0);
  fill(0);
  line(140,125,140,155);
  
  strokeWeight(2);
  stroke(0);
  fill(0);
  line(145,125,145,155);
  
  strokeWeight(2);
  stroke(0);
  fill(0);
  line(165,120,165,150);
  
  strokeWeight(2);
  stroke(0);
  fill(0);
  line(170,120,170,150);
  
  strokeWeight(2);
  stroke(0);
  fill(0);
  line(190,120,190,150);
  
  strokeWeight(2);
  stroke(0);
  fill(0);
  line(195,120,195,150);
  
  strokeWeight(2);
  stroke(0);
  fill(0);
  line(215,115,215,145);
  
  strokeWeight(2);
  stroke(0);
  fill(0);
  line(220,115,220,145);
  
  strokeWeight(2);
  stroke(0);
  fill(0);
  line(240,115,240,145);
  
  strokeWeight(2);
  stroke(0);
  fill(0);
  line(245,110,245,140);
  
  strokeWeight(2);
  stroke(0);
  fill(0);
  line(260,105,260,135);
  
  strokeWeight(2);
  stroke(0);
  fill(0);
  line(265,105,265,135);
  
  strokeWeight(2);
  stroke(0);
  fill(0);
  line(280,100,280,130);
  
  strokeWeight(2);
  stroke(0);
  fill(0);
  line(285,100,285,130);
  
  //Draw smoke
  strokeWeight(0);
  stroke(0);
  fill(255);
  ellipse(60,40,10,10);
  
  strokeWeight(0);
  stroke(0);
  fill(255);
  ellipse(80,20,15,15);
}


