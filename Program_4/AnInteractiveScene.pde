// This is a scene of Boardwalk
// Author: Yunyi Ding, Caitlin Campodonico

int circleX;
int circleX1;
int circleY;
int dia=30;
int scene=0;
int START=0, NIGHT=1, MOVING_NIGHT=2, LIGHTS_ON=3, DAY=4;

void setup() {
  size(700, 500);
  smooth();
  circleX=80;
  circleX1=160;
  circleY=height-30;
}
float len=100;
float r;
float endPointX=len*cos(r);
float endPointY= len*sin(r);
int a=60;
float x=0;
float y=0;
float lockX;
float lockY;


void draw() {
  background(10, 3, 95);
  strokeWeight(5);
  stroke(0);
  fill(62, 38, 0);

  // Draw a frame
  quad(0, 0, width, 0, width-30, 30, 30, 30);
  quad(width, 0, width, height, width-30, height-30, width-30, 30);
  quad(0, 0, 30, 30, 30, height-30, 0, height);
  quad(width-30, height-50, width, height, 0, height, 30, height-50);

  // Draw Buttoms
  fill(182, 129, 245);
  ellipse(80, 470, 30, 30);
  fill(255, 157, 255);
  ellipse(160, 470, 30, 30);
  fill(157, 255, 248);
  ellipse(240, 470, 30, 30);
  fill(255, 244, 157);
  ellipse(320, 470, 30, 30);


  if (scene==NIGHT) {
    // Draw a scene with
    ellipse(circleX, circleY, dia, dia);

    pushMatrix();
    pushMatrix();
    translate(200, 170);
    strokeWeight(10);
    stroke(0);
    line(0, 0, -100, 190);
    line(0, 0, 100, 190);
    line(-80, 150, 80, 150);

    // Draw body of skywheel
    strokeWeight(3);
    stroke(0);
    noFill();
    ellipse(0, 0, 2*len, 2*len);
    ellipse(0, 0, 130, 130);
    ellipse(0, 0, 190, 190);
    ellipse(0, 0, 40, 40);


    for (r=0; r<2*PI;r=r+PI/6) {
      // Draw axis frame
      line(0, 0, len*cos(r), len*sin(r));

      //Draw seats
      fill(0);
      ellipse(len*cos(r), len*sin(r), 40, 40);

      //Draw windows
      fill(10, 3, 95);
      ellipse(len*cos(r), len*sin(r)-5, 20, 20);
    }

    // Draw Rollercoaster
    popMatrix();
    strokeWeight(15);
    translate(0, 380);
    // Draw pathway
    line(0, 0, 20, 0);
    line(20, 0, 40, -20);
    line(40, -20, 80, -40);
    line(80, -40, 120, -40);
    line(120, -40, 180, 20);
    line(180, 20, 220, 40);
    line(220, 40, 260, -20);
    line(260, -20, 300, -40);
    line(300, -40, 320, -80);
    line(320, -80, 380, -100);
    line(380, -100, 420, -100);
    line(420, -100, 500, 20);
    line(500, 20, 560, 60);
    line(560, 60, 600, 40);
    line(600, 40, 700, 20);

    strokeWeight(5);
    line(0, 0-a, 20, 0-a);
    line(20, 0-a, 40, -20-a);
    line(40, -20-a, 80, -40-a);
    line(80, -40-a, 120, -40-a);
    line(120, -40-a, 180, 20-a);
    line(180, 20-a, 220, 40-a);
    line(220, 40-a, 260, -20-a);
    line(260, -20-a, 300, -40-a);
    line(300, -40-a, 320, -80-a);
    line(320, -80-a, 380, -100-a);
    line(380, -100-a, 420, -100-a);
    line(420, -100-a, 500, 20-a);
    line(500, 20-a, 560, 60-a);
    line(560, 60-a, 600, 40-a);
    line(600, 40-a, 700, 20-a);

    // Draw seats on the pathway
    translate(20, -40);
    // Draw body
    fill(0);
    rectMode(CENTER);
    rect(lockX, lockY, 40, 40);
    // Draw window
    fill(10, 3, 95);
    rect(lockX, lockY, 20, 20);
    // Draw lock
    ellipse(lockX, lockY-20, 15, 15);  

    // Draw Ladder
    line(320, -40, 320, 100);
    line(420, -40, 420, 100);
    line(320, -40, 420, -40);
    line(320, -20, 420, -20);
    line(320, 0, 420, 0);
    line(320, 20, 420, 20);
    line(320, 40, 420, 40);
    line(320, 60, 420, 60);
    line(320, 80, 420, 80);

    // Draw pendulum bob
    translate(550, -180);
    // Draw Body
    fill(0);
    strokeWeight(5);
    fill(10, 3, 95);
    rect(0, 0, 80, 80);
    fill(0);
    ellipse(0, 0, 80, 80);
    rect(0, -60, 40, 40);
    fill(10, 3, 95);
    ellipse(0, -60, 40, 40);
    fill(0);
    quad(-20, 40, 20, 40, 40, 160, -40, 160);
    rectMode(CORNER);
    rect(-60, 160, 120, 20);


    // Draw Seats
    line(0, 0, -60, 100);
    rectMode(CENTER);
    rect(-60, 100, 40, 40);
    fill(10, 3, 95);
    ellipse(-60, 100, 30, 30);
    fill(0);
    line(0, 0, 60, 100);
    rect(60, 100, 40, 40);
    fill(10, 3, 95);
    ellipse(60, 100, 30, 30);

    popMatrix();
  }
  if (scene==MOVING_NIGHT) {
    ellipse(circleX1, circleY, dia, dia);

    pushMatrix();
    translate(200, 170);
    strokeWeight(10);
    stroke(0);
    line(0, 0, -100, 190);
    line(0, 0, 100, 190);
    line(-80, 150, 80, 150);

    rotate(radians(frameCount/15));
    // Draw body of skywheel
    strokeWeight(3);
    stroke(0);
    noFill();
    ellipse(0, 0, 2*len, 2*len);
    ellipse(0, 0, 130, 130);
    ellipse(0, 0, 190, 190);
    ellipse(0, 0, 40, 40);


    for (r=0; r<2*PI;r=r+PI/6) {
      // Draw axis frame
      line(0, 0, len*cos(r), len*sin(r));

      //Draw seats
      fill(0);
      ellipse(len*cos(r), len*sin(r), 40, 40);

      //Draw windows
      fill(10, 3, 95);
      ellipse(len*cos(r), len*sin(r)-5, 20, 20);
    }

    // Draw Rollercoaster
    popMatrix();
    strokeWeight(15);
    translate(0, 380);
    // Draw pathway
    line(0, 0, 20, 0);
    line(20, 0, 40, -20);
    line(40, -20, 80, -40);
    line(80, -40, 120, -40);
    line(120, -40, 180, 20);
    line(180, 20, 220, 40);
    line(220, 40, 260, -20);
    line(260, -20, 300, -40);
    line(300, -40, 320, -80);
    line(320, -80, 380, -100);
    line(380, -100, 420, -100);
    line(420, -100, 500, 20);
    line(500, 20, 560, 60);
    line(560, 60, 600, 40);
    line(600, 40, 700, 20);

    strokeWeight(5);
    line(0, 0-a, 20, 0-a);
    line(20, 0-a, 40, -20-a);
    line(40, -20-a, 80, -40-a);
    line(80, -40-a, 120, -40-a);
    line(120, -40-a, 180, 20-a);
    line(180, 20-a, 220, 40-a);
    line(220, 40-a, 260, -20-a);
    line(260, -20-a, 300, -40-a);
    line(300, -40-a, 320, -80-a);
    line(320, -80-a, 380, -100-a);
    line(380, -100-a, 420, -100-a);
    line(420, -100-a, 500, 20-a);
    line(500, 20-a, 560, 60-a);
    line(560, 60-a, 600, 40-a);
    line(600, 40-a, 700, 20-a);

    // Draw seats on the pathway
    translate(20, -40);
    // Draw body
    fill(0);
    rectMode(CENTER);
    if (lockX>=0&&lockX<=40) {
      rect(lockX, lockY, 40, 40);
      // Draw window
      fill(10, 3, 95);
      rect(lockX, lockY, 20, 20);
      // Draw lock
      ellipse(lockX, lockY-20, 15, 15);  
      lockX= lockX+.5;
      lockY=lockY-.5;
    }
    else if (lockX>=40&&lockX<=110) {
      rect(lockX, lockY+10, 40, 40);
      // Draw window
      fill(10, 3, 95);
      rect(lockX, lockY+10, 20, 20);
      // Draw lock
      ellipse(lockX, lockY-10, 15, 15);  
      lockX= lockX+.5;
    }
    else if (lockX>=110&&lockX<=190) {
      rect(lockX, lockY+10, 40, 40);
      // Draw window
      fill(10, 3, 95);
      rect(lockX, lockY+10, 20, 20);
      // Draw lock
      ellipse(lockX, lockY-10, 15, 15);  
      lockX= lockX+.5;
      lockY= lockY+0.5;
    }
    else if (lockX>=190&&lockX<=260) {
      rect(lockX, lockY+10, 40, 40);
      // Draw window
      fill(10, 3, 95);
      rect(lockX, lockY+10, 20, 20);
      // Draw lock
      ellipse(lockX, lockY-10, 15, 15);  
      lockX= lockX+.5;
      lockY= lockY-0.5;
    }
    else if (lockX>=260&&lockX<=280) {
      rect(lockX, lockY+10, 40, 40);
      // Draw window
      fill(10, 3, 95);
      rect(lockX, lockY+10, 20, 20);
      // Draw lock
      ellipse(lockX, lockY-10, 15, 15);  
      lockX= lockX+.5;
      lockY= lockY-0.3;
    }
    else if (lockX>=280&&lockX<=320) {
      rect(lockX, lockY+10, 40, 40);
      // Draw window
      fill(10, 3, 95);
      rect(lockX, lockY+10, 20, 20);
      // Draw lock
      ellipse(lockX, lockY-10, 15, 15);  
      lockX= lockX+.5;
      lockY= lockY-0.6;
    } 
    else if (lockX>=320&&lockX<=360) {
      rect(lockX, lockY+10, 40, 40);
      // Draw window
      fill(10, 3, 95);
      rect(lockX, lockY+10, 20, 20);
      // Draw lock
      ellipse(lockX, lockY-10, 15, 15);  
      lockX= lockX+.5;
      lockY= lockY-0.2;
    } 
    else if (lockX>=360&&lockX<=400) {
      rect(lockX, lockY+10, 40, 40);
      // Draw window
      fill(10, 3, 95);
      rect(lockX, lockY+10, 20, 20);
      // Draw lock
      ellipse(lockX, lockY-10, 15, 15);  
      lockX= lockX+.5;
    } 
    else if (lockX>=320&&lockX<=330) {
      rect(lockX, lockY-40, 40, 40);
      // Draw window
      fill(10, 3, 95);
      rect(lockX, lockY-40, 20, 20);
      // Draw lock
      ellipse(lockX, lockY, 15, 15);  
      lockX= lockX+.5;
      lockY= lockY-0.5;
    } 
    else if (lockX>=330&&lockX<=540) {
      rect(lockX, lockY+40, 40, 40);
      // Draw window
      fill(10, 3, 95);
      rect(lockX, lockY+40, 20, 20);
      // Draw lock
      ellipse(lockX, lockY+20, 15, 15);  
      lockX= lockX+.5;
      lockY= lockY+0.5;
    } 
    else if (lockX>=540&&lockX<=600) {
      rect(lockX, lockY+40, 40, 40);
      // Draw window
      fill(10, 3, 95);
      rect(lockX, lockY+40, 20, 20);
      // Draw lock
      ellipse(lockX, lockY+10, 15, 15);  
      lockX= lockX+.5;
      lockY= lockY-0.3;
    } 
    else if (lockX>=600&&lockX<=700) {
      rect(lockX, lockY+50, 40, 40);
      // Draw window
      fill(10, 3, 95);
      rect(lockX, lockY+50, 20, 20);
      // Draw lock
      ellipse(lockX, lockY+30, 15, 15);  
      lockX= lockX+.5;
      lockY= lockY-0.2;
    }
    // Draw Ladder
    line(320, -40, 320, 100);
    line(420, -40, 420, 100);
    line(320, -40, 420, -40);
    line(320, -20, 420, -20);
    line(320, 0, 420, 0);
    line(320, 20, 420, 20);
    line(320, 40, 420, 40);
    line(320, 60, 420, 60);
    line(320, 80, 420, 80);

    // Draw pendulum bob
    translate(550, -180);
    // Draw Body
    fill(0);
    strokeWeight(5);
    fill(10, 3, 95);
    rect(0, 0, 80, 80);
    fill(0);
    ellipse(0, 0, 80, 80);
    rect(0, -60, 40, 40);
    fill(10, 3, 95);
    ellipse(0, -60, 40, 40);
    fill(0);
    quad(-20, 40, 20, 40, 40, 160, -40, 160);
    rectMode(CORNER);
    rect(-60, 160, 120, 20);


    // Draw Seats
    rotate(radians(frameCount*8));
    line(0, 0, -60, 100);
    rectMode(CENTER);
    rect(-60, 100, 40, 40);
    fill(10, 3, 95);
    ellipse(-60, 100, 30, 30);
    rotate(radians(-frameCount*16));
    fill(0);
    line(0, 0, 60, 100);
    rect(60, 100, 40, 40);
    fill(10, 3, 95);
    ellipse(60, 100, 30, 30);
  }
  else if (scene==LIGHTS_ON) {
    ellipse(3*circleX, circleY, dia, dia);

    pushMatrix();
    translate(200, 170);
    strokeWeight(10);
    stroke(0);
    line(0, 0, -100, 190);
    line(0, 0, 100, 190);
    line(-80, 150, 80, 150);

    rotate(radians(frameCount/15));
    // Draw body of skywheel
    strokeWeight(3);
    stroke(random(255), random(255), random(255));
    noFill();
    ellipse(0, 0, 2*len, 2*len);
    ellipse(0, 0, 130, 130);
    ellipse(0, 0, 190, 190);
    ellipse(0, 0, 40, 40);


    for (r=0; r<2*PI;r=r+PI/6) {
      // Draw axis frame
      line(0, 0, len*cos(r), len*sin(r));

      //Draw seats
      fill(0);
      ellipse(len*cos(r), len*sin(r), 40, 40);

      //Draw windows
      fill(10, 3, 95);
      ellipse(len*cos(r), len*sin(r)-5, 20, 20);
    }

    // Draw Rollercoaster
    popMatrix();
    strokeWeight(15);
    translate(0, 380);
    // Draw pathway
    line(0, 0, 20, 0);
    line(20, 0, 40, -20);
    line(40, -20, 80, -40);
    line(80, -40, 120, -40);
    line(120, -40, 180, 20);
    line(180, 20, 220, 40);
    line(220, 40, 260, -20);
    line(260, -20, 300, -40);
    line(300, -40, 320, -80);
    line(320, -80, 380, -100);
    line(380, -100, 420, -100);
    line(420, -100, 500, 20);
    line(500, 20, 560, 60);
    line(560, 60, 600, 40);
    line(600, 40, 700, 20);

    strokeWeight(5);
    line(0, 0-a, 20, 0-a);
    line(20, 0-a, 40, -20-a);
    line(40, -20-a, 80, -40-a);
    line(80, -40-a, 120, -40-a);
    line(120, -40-a, 180, 20-a);
    line(180, 20-a, 220, 40-a);
    line(220, 40-a, 260, -20-a);
    line(260, -20-a, 300, -40-a);
    line(300, -40-a, 320, -80-a);
    line(320, -80-a, 380, -100-a);
    line(380, -100-a, 420, -100-a);
    line(420, -100-a, 500, 20-a);
    line(500, 20-a, 560, 60-a);
    line(560, 60-a, 600, 40-a);
    line(600, 40-a, 700, 20-a);

    // Draw seats on the pathway
    translate(20, -40);
    // Draw body
    fill(0);
    rectMode(CENTER);
    if (lockX>=0&&lockX<=40) {
      rect(lockX, lockY, 40, 40);
      // Draw window
      fill(10, 3, 95);
      rect(lockX, lockY, 20, 20);
      // Draw lock
      ellipse(lockX, lockY-20, 15, 15);  
      lockX= lockX+.5;
      lockY=lockY-.5;
    }
    else if (lockX>=40&&lockX<=110) {
      rect(lockX, lockY+10, 40, 40);
      // Draw window
      fill(10, 3, 95);
      rect(lockX, lockY+10, 20, 20);
      // Draw lock
      ellipse(lockX, lockY-10, 15, 15);  
      lockX= lockX+.5;
    }
    else if (lockX>=110&&lockX<=190) {
      rect(lockX, lockY+10, 40, 40);
      // Draw window
      fill(10, 3, 95);
      rect(lockX, lockY+10, 20, 20);
      // Draw lock
      ellipse(lockX, lockY-10, 15, 15);  
      lockX= lockX+.5;
      lockY= lockY+0.5;
    }
    else if (lockX>=190&&lockX<=260) {
      rect(lockX, lockY+10, 40, 40);
      // Draw window
      fill(10, 3, 95);
      rect(lockX, lockY+10, 20, 20);
      // Draw lock
      ellipse(lockX, lockY-10, 15, 15);  
      lockX= lockX+.5;
      lockY= lockY-0.5;
    }
    else if (lockX>=260&&lockX<=280) {
      rect(lockX, lockY+10, 40, 40);
      // Draw window
      fill(10, 3, 95);
      rect(lockX, lockY+10, 20, 20);
      // Draw lock
      ellipse(lockX, lockY-10, 15, 15);  
      lockX= lockX+.5;
      lockY= lockY-0.3;
    }
    else if (lockX>=280&&lockX<=320) {
      rect(lockX, lockY+10, 40, 40);
      // Draw window
      fill(10, 3, 95);
      rect(lockX, lockY+10, 20, 20);
      // Draw lock
      ellipse(lockX, lockY-10, 15, 15);  
      lockX= lockX+.5;
      lockY= lockY-0.6;
    } 
    else if (lockX>=320&&lockX<=360) {
      rect(lockX, lockY+10, 40, 40);
      // Draw window
      fill(10, 3, 95);
      rect(lockX, lockY+10, 20, 20);
      // Draw lock
      ellipse(lockX, lockY-10, 15, 15);  
      lockX= lockX+.5;
      lockY= lockY-0.2;
    } 
    else if (lockX>=360&&lockX<=400) {
      rect(lockX, lockY+10, 40, 40);
      // Draw window
      fill(10, 3, 95);
      rect(lockX, lockY+10, 20, 20);
      // Draw lock
      ellipse(lockX, lockY-10, 15, 15);  
      lockX= lockX+.5;
    } 
    else if (lockX>=320&&lockX<=330) {
      rect(lockX, lockY-40, 40, 40);
      // Draw window
      fill(10, 3, 95);
      rect(lockX, lockY-40, 20, 20);
      // Draw lock
      ellipse(lockX, lockY, 15, 15);  
      lockX= lockX+.5;
      lockY= lockY-0.5;
    } 
    else if (lockX>=330&&lockX<=540) {
      rect(lockX, lockY+40, 40, 40);
      // Draw window
      fill(10, 3, 95);
      rect(lockX, lockY+40, 20, 20);
      // Draw lock
      ellipse(lockX, lockY+20, 15, 15);  
      lockX= lockX+.5;
      lockY= lockY+0.5;
    } 
    else if (lockX>=540&&lockX<=600) {
      rect(lockX, lockY+40, 40, 40);
      // Draw window
      fill(10, 3, 95);
      rect(lockX, lockY+40, 20, 20);
      // Draw lock
      ellipse(lockX, lockY+10, 15, 15);  
      lockX= lockX+.5;
      lockY= lockY-0.3;
    } 
    else if (lockX>=600&&lockX<=700) {
      rect(lockX, lockY+50, 40, 40);
      // Draw window
      fill(10, 3, 95);
      rect(lockX, lockY+50, 20, 20);
      // Draw lock
      ellipse(lockX, lockY+30, 15, 15);  
      lockX= lockX+.5;
      lockY= lockY-0.2;
    }
    // Draw Ladder
    stroke(0);
    line(320, -40, 320, 100);
    line(420, -40, 420, 100);
    line(320, -40, 420, -40);
    line(320, -20, 420, -20);
    line(320, 0, 420, 0);
    line(320, 20, 420, 20);
    line(320, 40, 420, 40);
    line(320, 60, 420, 60);
    line(320, 80, 420, 80);

    stroke(random(255), random(255), random(255));
    // Draw pendulum bob
    translate(550, -180);
    // Draw Body
    fill(0);
    strokeWeight(5);
    fill(10, 3, 95);
    rect(0, 0, 80, 80);
    fill(0);
    ellipse(0, 0, 80, 80);
    rect(0, -60, 40, 40);
    fill(10, 3, 95);
    ellipse(0, -60, 40, 40);
    fill(0);
    quad(-20, 40, 20, 40, 40, 160, -40, 160);
    rectMode(CORNER);
    rect(-60, 160, 120, 20);


    // Draw Seats
    rotate(radians(frameCount*8));
    line(0, 0, -60, 100);
    rectMode(CENTER);
    rect(-60, 100, 40, 40);
    fill(10, 3, 95);
    ellipse(-60, 100, 30, 30);
    rotate(radians(-frameCount*16));
    fill(0);
    line(0, 0, 60, 100);
    rect(60, 100, 40, 40);
    fill(10, 3, 95);
    ellipse(60, 100, 30, 30);
  }
  else if (scene==DAY) {
    ellipse(4*circleX, circleY, dia, dia);

    pushMatrix();
    background(250, 216, 23);
    translate(200, 170);
    strokeWeight(10);
    stroke(49, 19, 0);
    line(0, 0, -100, 190);
    line(0, 0, 100, 190);
    line(-80, 150, 80, 150);

    rotate(radians(frameCount/15));
    // Draw body of skywheel
    strokeWeight(3);
    stroke(49, 19, 0);
    noFill();
    ellipse(0, 0, 2*len, 2*len);
    ellipse(0, 0, 130, 130);
    ellipse(0, 0, 190, 190);
    ellipse(0, 0, 40, 40);


    for (r=0; r<2*PI;r=r+PI/6) {
      // Draw axis frame
      line(0, 0, len*cos(r), len*sin(r));

      //Draw seats
      fill(68, 145, 250);
      ellipse(len*cos(r), len*sin(r), 40, 40);

      //Draw windows
      fill(250, 216, 23);
      ellipse(len*cos(r), len*sin(r)-5, 20, 20);
    }

    // Draw Rollercoaster
    popMatrix();
    strokeWeight(15);
    translate(0, 380);
    // Draw pathway
    line(0, 0, 20, 0);
    line(20, 0, 40, -20);
    line(40, -20, 80, -40);
    line(80, -40, 120, -40);
    line(120, -40, 180, 20);
    line(180, 20, 220, 40);
    line(220, 40, 260, -20);
    line(260, -20, 300, -40);
    line(300, -40, 320, -80);
    line(320, -80, 380, -100);
    line(380, -100, 420, -100);
    line(420, -100, 500, 20);
    line(500, 20, 560, 60);
    line(560, 60, 600, 40);
    line(600, 40, 700, 20);

    strokeWeight(5);
    line(0, 0-a, 20, 0-a);
    line(20, 0-a, 40, -20-a);
    line(40, -20-a, 80, -40-a);
    line(80, -40-a, 120, -40-a);
    line(120, -40-a, 180, 20-a);
    line(180, 20-a, 220, 40-a);
    line(220, 40-a, 260, -20-a);
    line(260, -20-a, 300, -40-a);
    line(300, -40-a, 320, -80-a);
    line(320, -80-a, 380, -100-a);
    line(380, -100-a, 420, -100-a);
    line(420, -100-a, 500, 20-a);
    line(500, 20-a, 560, 60-a);
    line(560, 60-a, 600, 40-a);
    line(600, 40-a, 700, 20-a);

    // Draw seats on the pathway
    translate(20, -40);
    // Draw body
    fill(178, 130, 234);
    rectMode(CENTER);
    if (lockX>=0&&lockX<=40) {
      rect(lockX, lockY, 40, 40);
      // Draw window
      fill(250, 216, 23);
      rect(lockX, lockY, 20, 20);
      // Draw lock
      ellipse(lockX, lockY-20, 15, 15);  
      lockX= lockX+.5;
      lockY=lockY-.5;
    }
    else if (lockX>=40&&lockX<=110) {
      rect(lockX, lockY+10, 40, 40);
      // Draw window
      fill(250, 216, 23);
      rect(lockX, lockY+10, 20, 20);
      // Draw lock
      ellipse(lockX, lockY-10, 15, 15);  
      lockX= lockX+.5;
    }
    else if (lockX>=110&&lockX<=190) {
      rect(lockX, lockY+10, 40, 40);
      // Draw window
      fill(250, 216, 23);
      rect(lockX, lockY+10, 20, 20);
      // Draw lock
      ellipse(lockX, lockY-10, 15, 15);  
      lockX= lockX+.5;
      lockY= lockY+0.5;
    }
    else if (lockX>=190&&lockX<=260) {
      rect(lockX, lockY+10, 40, 40);
      // Draw window
      fill(250, 216, 23);
      rect(lockX, lockY+10, 20, 20);
      // Draw lock
      ellipse(lockX, lockY-10, 15, 15);  
      lockX= lockX+.5;
      lockY= lockY-0.5;
    }
    else if (lockX>=260&&lockX<=280) {
      rect(lockX, lockY+10, 40, 40);
      // Draw window
      fill(250, 216, 23);
      rect(lockX, lockY+10, 20, 20);
      // Draw lock
      ellipse(lockX, lockY-10, 15, 15);  
      lockX= lockX+.5;
      lockY= lockY-0.3;
    }
    else if (lockX>=280&&lockX<=320) {
      rect(lockX, lockY+10, 40, 40);
      // Draw window
      fill(250, 216, 23);
      rect(lockX, lockY+10, 20, 20);
      // Draw lock
      ellipse(lockX, lockY-10, 15, 15);  
      lockX= lockX+.5;
      lockY= lockY-0.6;
    } 
    else if (lockX>=320&&lockX<=360) {
      rect(lockX, lockY+10, 40, 40);
      // Draw window
      fill(250, 216, 23);
      rect(lockX, lockY+10, 20, 20);
      // Draw lock
      ellipse(lockX, lockY-10, 15, 15);  
      lockX= lockX+.5;
      lockY= lockY-0.2;
    } 
    else if (lockX>=360&&lockX<=400) {
      rect(lockX, lockY+10, 40, 40);
      // Draw window
      fill(250, 216, 23);
      rect(lockX, lockY+10, 20, 20);
      // Draw lock
      ellipse(lockX, lockY-10, 15, 15);  
      lockX= lockX+.5;
    } 
    else if (lockX>=320&&lockX<=330) {
      rect(lockX, lockY-40, 40, 40);
      // Draw window
      fill(250, 216, 23);
      rect(lockX, lockY-40, 20, 20);
      // Draw lock
      ellipse(lockX, lockY, 15, 15);  
      lockX= lockX+.5;
      lockY= lockY-0.5;
    } 
    else if (lockX>=330&&lockX<=540) {
      rect(lockX, lockY+40, 40, 40);
      // Draw window
      fill(250, 216, 23);
      rect(lockX, lockY+40, 20, 20);
      // Draw lock
      ellipse(lockX, lockY+20, 15, 15);  
      lockX= lockX+.5;
      lockY= lockY+0.5;
    } 
    else if (lockX>=540&&lockX<=600) {
      rect(lockX, lockY+40, 40, 40);
      // Draw window
      fill(250, 216, 23);
      rect(lockX, lockY+40, 20, 20);
      // Draw lock
      ellipse(lockX, lockY+10, 15, 15);  
      lockX= lockX+.5;
      lockY= lockY-0.3;
    } 
    else if (lockX>=600&&lockX<=700) {
      rect(lockX, lockY+50, 40, 40);
      // Draw window
      fill(250, 216, 23);
      rect(lockX, lockY+50, 20, 20);
      // Draw lock
      ellipse(lockX, lockY+30, 15, 15);  
      lockX= lockX+.5;
      lockY= lockY-0.2;
    }
    // Draw Ladder
    line(320, -40, 320, 100);
    line(420, -40, 420, 100);
    line(320, -40, 420, -40);
    line(320, -20, 420, -20);
    line(320, 0, 420, 0);
    line(320, 20, 420, 20);
    line(320, 40, 420, 40);
    line(320, 60, 420, 60);
    line(320, 80, 420, 80);

    // Draw pendulum bob
    translate(550, -180);
    // Draw Body
    fill(0);
    strokeWeight(5);
    fill(250, 216, 23);
    rect(0, 0, 80, 80);
    fill(255, 124, 0);
    ellipse(0, 0, 80, 80);
    rect(0, -60, 40, 40);
    fill(125, 166, 247);
    ellipse(0, -60, 40, 40);
    fill(179, 140, 247);
    quad(-20, 40, 20, 40, 40, 160, -40, 160);
    rectMode(CORNER);
    fill(36, 19, 1);
    rect(-60, 160, 120, 20);


    // Draw Seats
    rotate(radians(frameCount*8));
    line(0, 0, -60, 100);
    rectMode(CENTER);
    rect(-60, 100, 40, 40);
    fill(250, 216, 23);
    ellipse(-60, 100, 30, 30);
    rotate(radians(-frameCount*16));
    fill(0);
    line(0, 0, 60, 100);
    rect(60, 100, 40, 40);
    fill(250, 216, 23);
    ellipse(60, 100, 30, 30);
  }
}
void mousePressed() {
  if (dist(mouseX, mouseY, circleX, circleY)<=dia/2) {
    scene= NIGHT;
  }
  else if (dist(mouseX, mouseY, circleX1, circleY)<=dia/2) {
    scene=MOVING_NIGHT;
  }
  else if (dist(mouseX, mouseY, 3*circleX, circleY)<=dia/2) {
    scene=LIGHTS_ON;
  }
  else if (dist(mouseX, mouseY, 4*circleX, circleY)<=dia/2) {
    scene=DAY;
  }
  else {
    scene=START;
  }
}

