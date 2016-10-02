/* This is a 2D-game.(Landing In Space)
  Two players need to control the directions, the velocities, and the fuels
  to move the rockets. If you want the rockets to safe landing, you have to 
  keep their velocities in a limited domain. 
  When the velocities are too high, rockets crash themselves, 
  but everyone survives. 
  Two rockets have different maximum velocities. Rocket2 has a greater maximum velocity.
  Warning: the bodies of rockets will turn red. You still have chance to be safe. You 
  should keep velocities low.
  If the rockets go off screen, game over, the screen turns red.
  If two rockets touch each other, fatal crash, everyone dies.
  If rockets are landing with the high velocities or without fuel, fatal landing.
  Are you ready to drive your rockets and safe landing?? 
  
  Direction: UP & DOWN arrows || 'w' & 's' control up-down direction
                                                         and velocity;
             LEFT & RIGHT arrows || 'a' & 'd' control degree direction
  
  Author: Yunyi Ding 
  Editor: Caitlin Campodonico
 */

Rocket rocket1;
Rocket rocket2;
void setup() {
  size(1000, 800);
  rocket1 = new Rocket(width/4, height/2);
  rocket2 = new Rocket(width*3/4, height/2);
  smooth();
}

void draw() {
  background(0);
  offScreen();
  scene();
  land();
  landing();
  crashLanding();
  lifeSupport();
  strokeWeight(3);
  stroke(0);
  fill(0);
  stroke(random(255), random(255), random(255));

  pushMatrix();
  //fuel1 frame
  triangle(90, 90, 120, 60, 120, 120);
  rect(120, 60, 120+100, 60);
  triangle(240+100, 60, 270+100, 90, 240+100, 120);
  //rocket1 fuel percent show
  fill(random(255), random(255), random(255));
  PFont font=createFont("Georgia", 20);
  textFont(font);
  text("rocket1:"+" " +rocket1.fuel1*10+"%", 150, 90);
  fill(0);
  //fuel2 frame
  translate(width-400, 0);
  triangle(90, 90, 120, 60, 120, 120);
  rect(120, 60, 120+100, 60);
  triangle(240+100, 60, 270+100, 90, 240+100, 120);

  popMatrix();
  //rocket2 fuel percent show
  fill(random(255), random(255), random(255));
  text("rocket2:"+" "+rocket2.fuel2*10+"%", width-250, 90);

  adjustControls(rocket1);
  adjustControls(rocket2);
  rocket1.update1();
  rocket2.update2();
  shutDown();
}


/*
  Control the rocket using UP-arrow and DOWN-arrow or 'w' and 's' for thrust
  and 'a' or left-arrow for rotating counter-clockwise and 'd' or right-arrow 
  for rotating clockwise.
  It takes a single parameter, which is the rocket being controlled.
  */

void adjustControls(Rocket rocket) {
  if (keyPressed) {
    if (key==CODED) {// tells us it was a "special" key
      if (keyCode==RIGHT) {
        rocket2.rotateRocket(1);
      }
      else if (keyCode==LEFT) {
        rocket2.rotateRocket(-1);
      }
      else if (keyCode==UP) {
        rocket2.setThrust(100);
      }
      else if (keyCode==DOWN) {
        rocket2.setThrust(-50);
      }
    }
    else if (key=='d') {
      rocket1.rotateRocket(1);
    }
    else if (key=='a') {
      rocket1.rotateRocket(-1);
    }
    else if (key=='w') {
      rocket1.setThrust(100);
    }
    else if (key=='s') {
      rocket1.setThrust(-50);
    }
  }
}


//star scene
int[]starX=new int[1000];
int[]starY=new int[1000];
void scene() {
  for (int i=0; i<1000; i+=20) {
    fill(random(100, 255));
    starX[i]=(int)random(width);
    starY[i]=(int)random(height);
    ellipse(starX[i], starY[i], 2, 2);
  }
}

//shut down when the fuel is used out
void shutDown() {
  if (rocket1.fuel1<0) {
    rocket1.fuel1=0;
    rocket1.setThrust(0);
  }
  if (rocket2.fuel2<0) {
    rocket2.fuel2=0;
    rocket2.setThrust(0);
  }
}

// land level
void land() {
  noStroke();
  fill(114, 187, 245);
  rect(0, 650, 1000, 30);
}

// Landing
void landing() {
  if (rocket2.fuel2>0&&rocket2.y+100>=750){
    //rocket2 safe landing
    if(abs(rocket2.yVel)<=0.5) {
    rocket2.yVel=0;
    rocket2.xVel=0;
    println("rocket2:"+" "+"safeLanding");
    fill(255, 0, 0); 
    PFont font=createFont("Georgia", 20);
    textFont(font);
    text("rocket2:"+" "+"Safe Landing", width*3/4, height/2);
    
  }//rocket2 fatal landing
   else if(abs(rocket2.yVel)>0.5){
    println("rocket2:"+" "+"fatalLanding");
    fill(255, 0, 0); 
    PFont font=createFont("Georgia", 20);
    textFont(font);
    text("rocket2:"+" "+"Fatal Landing", width*3/4, height/2);
   
  }
  }
  
   //rocket1 safe landing 
  if (rocket1.fuel1>0&&rocket1.y+100>=750){
    if(abs(rocket1.yVel)<=0.3) {
    rocket1.yVel=0;
    rocket1.xVel=0;
    println("rocket1:"+" "+"safeLanding");
    fill(255, 0, 0); 
    PFont font=createFont("Georgia", 20);
    textFont(font);
    text("rocket1:"+" "+"Safe Landing", width/4, height/2);
   
  }//rocket1 fatal landing
    else if(abs(rocket1.yVel)>0.3){
    println("rocket1:"+" "+"fatalLanding");
    fill(255, 0, 0); 
    PFont font=createFont("Georgia", 20);
    textFont(font);
    text("rocket1:"+" "+"Fatal Landing", width/4, height/2);
   
  }
}
}

//crashLanding when landing without fuel
void crashLanding() {
  if (rocket2.fuel2<=0&&rocket2.y+100>=750) {
    println("rocket2:"+" "+"crashLanding");
    fill(255, 0, 0); 
    PFont font=createFont("Georgia", 20);
    textFont(font);
    text("rocket2:"+" "+"Crash Landing", width*3/4, height/2);
  }
  if (rocket1.fuel1<=0&&rocket1.y+100>=750) {
    println("rocket1:"+" "+"crashLanding");
    fill(255, 0, 0); 
    PFont font=createFont("Georgia", 20);
    textFont(font);
    text("rocket1:"+" "+"Crash Landing", width/4, height/2);
  }
}

//lifeSupport only fails when two rockets collision
void lifeSupport(){
  if(dist(rocket1.x,rocket1.y,rocket2.x,rocket2.y)<100){
    rocket1.yVel=0;
    rocket1.xVel=0;
    rocket2.yVel=0;
    rocket2.xVel=0;
    rocket1.fuel1=0;
    rocket2.fuel2=0;
    println("Fatal Crash");
    fill(255, 0, 0); 
    PFont font=createFont("Georgia", 20);
    textFont(font);
    text("Everyone Dies", width/2,100);
    fill(219,178,252); 
    text("Rocket1:"+" "+"Life Support"+" "+"0%", width/4,150);
    text("Rocket2:"+" "+"Life Support"+" "+"0%", width*3/4,150);
    for(float i=500; i>0; i-=10){
      stroke(255,102,0);
      fill(255,200,0);
      ellipse(rocket1.x,rocket1.y,i,i);
      ellipse(rocket2.x,rocket2.y,i,i);
    }
  }else{
    fill(219,178,252); 
    PFont font=createFont("Georgia", 20);
    textFont(font);
    text("Rocket1:"+" "+"Life Support"+" "+"100%", width/4,150);
    text("Rocket2:"+" "+"Life Support"+" "+"100%", width*3/4,150);
  }
}

/*Bound: when rockets are out of the screen, screen turns red: game over
  */
void offScreen(){
  if(rocket1.x>width||rocket1.x<0||rocket1.y<0){
   noStroke();
   fill(255,0,0);
   rect(0,0,width/2,height);
   fill(0);
   println("rocket1 dies");
   }
  
  if(rocket2.x>width||rocket2.x<0||rocket2.y<0){
   noStroke();
   fill(255,0,0);
   rect(width/2,0,width/2,height);
   println("rocket2 dies");
  }
}




