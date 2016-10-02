/*
 A two-rocket class, operating in a vacuum (no friction)
 but with gravity pulling it down.
 Author: Yunyi Ding
 */
class Rocket {
  /**
   Initial location of the rocket.
   @param startX - horizontal location
   @param startY - vertical location
   */
  Rocket(int startX, int startY) {
    x = startX;
    y = startY;
  }

  /**
   Increase the thrust the specified amount between 0-100 where specifying 100
   will increase to MAX_THRUST.
   */
  void increaseThrust(int amount) {
    amount = constrain(amount, 0, 100);
    thrust = thrust + MAX_THRUST*amount/100;
    if (thrust > MAX_THRUST) thrust = MAX_THRUST;
  }

  /**
   Decrease the thrust by the specified amount where decreasing by 100 will
   immediately reduce thrust to zero.
   */
  void setThrust(int amount) {
    amount = constrain(amount, 0, 100);
    thrust = MAX_THRUST*amount/100;
    if (thrust < 0) thrust = 0;
  }

  /**
   Rotate the rocket positive means right or clockwise, negative means
   left or counter clockwise.
   */
  void rotateRocket(int amt) {
    tilt = tilt + amt*TILT_INC;
  }


  /**
   Adjust the position and velocity, and draw the rockets.
   */
   
   // rocket1
   void update1() {
    x = x + xVel;
    y = y + yVel;
    xVel = xVel - cos(tilt)*thrust;
    yVel = yVel - sin(tilt)*thrust + GRAVITY;
    
    // calculate fuel
    fuel1=fuel1-thrust;
    println("rocket1:"+fuel1/10*100+"%");
    // to make it more stable set very small values to 0
    if (abs(xVel) < 0.00005) xVel = 0;
    if (abs(yVel) < 0.00005) yVel = 0;
    
    // shut down
    if (fuel1<0) {
      xVel=0;
      yVel=0;
    }
    
    
    // draw it
    pushMatrix();
    translate(x, y);
    rotate(tilt - HALF_PI); 
    // draw the rocket thrust "flames"
    stroke(255);
    line(originX, originY, 0, thrust * FLAME_SCALE);

    // draw the rocket body
    smooth();
    strokeWeight(2);
    /*when yVelocity greater than a number, crash 
    rocket itself, and the body turns red.
    */
    if(abs(yVel)>0.3){
      stroke(255,0,0);
    }else if(abs(yVel)<=0.3){
      stroke(255);
    }
    
    fill(0);
    ellipse(-20, 40, 20, 20);
    ellipse(20, 40, 20, 20);
    triangle(0, 0, -20, 20, 20, 20);
    quad(-20, 20, -10, 60, 10, 60, 20, 20);
    fill(255);
    ellipse(-5, 30, 10, 10);
    strokeWeight(3);
    line(10, 20, 10, 50);
    line(0, 40, 0, 60);
    strokeWeight(0);
    fill(255, 255, 0);
    triangle(-10, 60, -30, 80, -20, 80);
    triangle(10, 60, 30, 80, 20, 80);
    line(0, 60, 0, 70);
    
    noStroke();
    fill(255, 158, 0);
    quad(0, 60, -10, 70, 0, 90, 10, 70);
    
    popMatrix();
  }

  //rocket2
  void update2() {
    x = x + xVel;
    y = y + yVel;
    xVel = xVel - cos(tilt)*thrust;
    yVel = yVel - sin(tilt)*thrust + GRAVITY;
    fuel2=fuel2-thrust;
    println("rocket2:"+fuel2/10*100+"%");
    // to make it more stable set very small values to 0
    if (abs(xVel) < 0.00005) xVel = 0;
    if (abs(yVel) < 0.00005) yVel = 0;
    if (fuel2<0) {//shutDown
      xVel=0;
      yVel=0;
    }

    // draw it
    pushMatrix();
    
    translate(x, y);
    rotate(tilt - HALF_PI); 
    // draw the rocket thrust "flames"
    stroke(255);
    strokeWeight(3);
    line(originX2, originY2, 0, thrust * FLAME_SCALE);
    // draw the rocket body
    smooth();
    noStroke();
    fill(255, 158, 0);
    ellipse(0, 60, 20, 60);
    strokeWeight(2);
    
    /*when yVelocity greater than a number, crash 
    rocket itself, and the body turns red.
    */
    if(abs(yVel)>0.5){
      stroke(255,0,0);
    }else if(abs(yVel)<=0.5){
      stroke(255);
    }
    
    fill(0);
    ellipse(-20, 40, 20, 20);
    ellipse(20, 40, 20, 20);
    fill(0);
    triangle(0, 0, -20, 20, 20, 20);
    triangle(-10, 50, 0, 60, 10, 50);
    quad(-20, 20, -10, 50, 10, 50, 20, 20);
    line(-10, 10, 0, 15);
    line(0, 15, 10, 10);
    line(-20, 20, -10, 30);
    line(-10, 30, 0, 25);
    line(0, 25, 10, 30);
    line(10, 30, 20, 20);
    ellipse(-10, 20, 10, 10);
    ellipse(10, 20, 10, 10); // bad magic numbers here for the simple rocket bod

    popMatrix();
    stroke(255);
  }
  private float x, y, xVel, yVel, thrust = GRAVITY, tilt = HALF_PI;
  private float originX=0, originY=0;
  private float originX2=0, originY2=0;
  float fuel1=10;
  float fuel2=10;
  // the values below were arrived at by trial and error
  // for something that had the responsiveness desired
  static final float GRAVITY = 0.001;
  static final float MAX_THRUST = 5*GRAVITY;
  static final float TILT_INC = 0.005;
  static final int FLAME_SCALE = 20000; // multiplier to determine how long the flame should be based on thrust
}

