// This is a Kuckucksuhr.
// Author: Yunyi Ding
int a=5;
int b=10;
int c=20;
int d=30;
int e=40;
int f=50;
int g=100;
int h=200;

void setup(){
  size(600,500);
  smooth(); 
  println("Move mouseX slowly from origin to the right");
}

void draw(){ // 00:00A.M.to 12:00P.M.
  if(mouseX>=0&&mouseX<=width/2){
  background(0,mouseX,3*mouseX);
    
  // Draw snow
  strokeWeight(b);
  stroke(5*f+a);
  point(random(0,width-g),random(0,width/2));
  point(random(h+f,width-g),random(0,g+f));
  point(random(0,h+f),random(0,g+f));
    
   // Move the origin to the center
  translate(width/2,height/2);
  pushMatrix();
  
  // Draw a chimney
  strokeWeight(3);
  stroke(77,43,0);
  fill(108,f+b,0);
  rect(g-b,-g-d,d,f+b);
  
  strokeWeight(5);
  stroke(0);
  line(g,-(g+c),g+c,-(g+c));
  line(g-a,-(g+b),g+a,-(g+b));
  line(g-a,-g,g+a,-g);
  line(g+a,-g+b,g+b+a,-g+b);
  line(g+b,-(g-c),g+c,-(g-c));
  
  // Draw roof
  strokeWeight(2);
  stroke(77,43,0);
  fill(28,201,159);
  quad(0,-(h-c),-(g+f),-(f-b),-(g+b),b,0,-(g+c));
  
  strokeWeight(1);
  line(-(g+e),-d,0,-(h-d));
  
  strokeWeight(3);
  quad(0,-(h-c),g+f,-e,g+b,b,0,-(g+c));
  
  // Draw a body
  strokeWeight(1);
  stroke(h+e,148,73);
  fill(h+e,148,73);
  quad(0,-(g+c),-g,0,-(f+b),f+b,0,f+b);
  quad(0,-(g+c),g,0,f+b,f+b,0,f+b);
  
  // Draw a base
  stroke(77,43,0);
  fill(28,201,159);
  quad(-g,f+b,g,f+b,g-c,g-b,-(g-c),g-b);
  
  strokeWeight(3);
  line(-g,f+b,g,f+b);
  
  // Draw a clock dial
  strokeWeight(2);
  stroke(0);
  fill(255,242,118);
  ellipse(0,0,g+c,g+c);
  
  // Write number on the dial
  strokeWeight(3);
  stroke(g,132,255);
  // 12
  line(-b,-f,0,-e);
  line(-b,-e,0,-f);
  line(a,-f,a,-e);
  line(b,-f,b,-e);
  // 3
  line(e,-b,e,0);
  line(e+a,-b,e+a,-0);
  line(f,-b,f,-0);
  // 6
  line(-a,e,0,f);
  line(a,e,0,f);
  line(b,e,b,f);
  // 9
  line(-f,-b,-f,0);
  line(-45,-b,-35,0);
  line(-35,-b,-45,0);
  // the rest of numbers from top to bottom, and from bottom to top
  strokeWeight(5);
  stroke(255,134,247);
  point(d,-e);
  point(e,-c);
  point(e,c);
  point(d,e);
  point(-c,e);
  point(-e,c);
  point(-e,c);
  point(-d,-e);
  point(-e,-c);
  
  // Draw clock pendulum
  noStroke();
  fill(77,43,0);
  ellipse(-c,g-b,8,8);
  ellipse(-c,g,8,8);
  ellipse(-c,g+b,8,8);
  ellipse(-c,g+c,8,8);
  ellipse(-c,g+d,8,8);
  ellipse(-c,g+e,8,8);
  
  ellipse(c,g-b,8,8);
  ellipse(c,g,8,8);
  ellipse(c,g+b,8,8);
  ellipse(c,g+c,8,8);
  ellipse(c,g+d,8,8);
  ellipse(c,g+e,8,8);
  ellipse(c,g+f,8,8);
  ellipse(c,h-e,8,8);
  ellipse(c,h-d,8,8);
  
  
  
 
  strokeWeight(0);
  stroke(77,43,0);
  fill(209,119,0);
  ellipse(-c,g+f,b,b);
  ellipse(-c,h-d,c,f);
  
  ellipse(c,h-c,b,b);
  ellipse(c,h+b,c,f);
  
  strokeWeight(2);
  line(-b,g+f,-d,h-d);
  line(-b,h-d,-d,h-b);
  line(-d,g+f,-b,h-d);
  line(-d,h-d,-b,h-b);
  
  line(b,h-b,d,h);
  line(b,h,d,h+c);
  line(d,h-b,b,h);
  line(d,h,b,h+c);
  
   // the flower above the dial
  translate(0,-90);
  
  strokeWeight(1);
  stroke(255);
  fill(255);
  ellipse(0,-b,a,c);
  ellipse(b,0,c,a);
  ellipse(0,b,a,c);
  ellipse(-b,0,c,a);
  
  
  strokeWeight(8);
  stroke(134,232,255);
  point(0,0);
  
  translate(0,90);
  strokeWeight(3);
  stroke(0);
  fill(255);
  
  
  // Clock goes by changing mouseX FROM LEFT TO RIGHT
    float theta = PI *2*mouseX/(0.5*width);
    rotate(theta);
    line(0,b,0,-c);
    ellipse(0,0,c,c);
  
    float delta= PI*2*mouseX/(0.05*height);
    rotate(delta);
    line(0,b,0,-d);
    ellipse(0,0,c,c);
  
  
  // Rotate the flower
  popMatrix();
  translate(0,-90);
  pushMatrix();
  
  strokeWeight(1);
  stroke(255);
  fill(255);
  rotate(PI/4);
  ellipse(0,-b,a,c);
  ellipse(b,0,c,a);
  ellipse(0,b,a,c);
  ellipse(-b,0,c,a);
  strokeWeight(8);
  stroke(134,232,255);
  point(0,0);
  
  // Draw a windwheel and spin it
  
  popMatrix();
  translate(0,-60);
  rotate(radians(frameCount));
  strokeWeight(1);
  stroke(0);
  fill(49,28,0);
  quad(d,-f,f,-d,-d,f,-f,d);
  quad(-d,-f,-f,-d,d,f,f,d);
  
  }else{ // 12:00p.m.TO 00:00a.m.
    background(0,108-(mouseX-width/2),255-(mouseX-width/2));
    
  // Draw snow
  strokeWeight(b);
  stroke(5*f+a);
  point(random(0,width-g),random(0,width/2));
  point(random(h+f,width-g),random(0,g+f));
  point(random(0,h+f),random(0,g+f));
    
   // Move the origin to the center
  translate(width/2,height/2);
  pushMatrix();
  
  // Draw a chimney
  strokeWeight(3);
  stroke(77,43,0);
  fill(108,f+b,0);
  rect(g-b,-g-d,d,f+b);
  
  strokeWeight(5);
  stroke(0);
  line(g,-(g+c),g+c,-(g+c));
  line(g-a,-(g+b),g+a,-(g+b));
  line(g-a,-g,g+a,-g);
  line(g+a,-g+b,g+b+a,-g+b);
  line(g+b,-(g-c),g+c,-(g-c));
  
  // Draw roof
  strokeWeight(2);
  stroke(77,43,0);
  fill(28,201,159);
  quad(0,-(h-c),-(g+f),-(f-b),-(g+b),b,0,-(g+c));
  
  strokeWeight(1);
  line(-(g+e),-d,0,-(h-d));
  
  strokeWeight(3);
  quad(0,-(h-c),g+f,-e,g+b,b,0,-(g+c));
  
  // Draw a body
  strokeWeight(1);
  stroke(h+e,148,73);
  fill(h+e,148,73);
  quad(0,-(g+c),-g,0,-(f+b),f+b,0,f+b);
  quad(0,-(g+c),g,0,f+b,f+b,0,f+b);
  
  // Draw a base
  stroke(77,43,0);
  fill(28,201,159);
  quad(-g,f+b,g,f+b,g-c,g-b,-(g-c),g-b);
  
  strokeWeight(3);
  line(-g,f+b,g,f+b);
  
  // Draw a clock dial
  strokeWeight(2);
  stroke(0);
  fill(255,242,118);
  ellipse(0,0,g+c,g+c);
  
  // Write number on the dial
  strokeWeight(3);
  stroke(g,132,255);
  // 12
  line(-b,-f,0,-e);
  line(-b,-e,0,-f);
  line(a,-f,a,-e);
  line(b,-f,b,-e);
  // 3
  line(e,-b,e,0);
  line(e+a,-b,e+a,-0);
  line(f,-b,f,-0);
  // 6
  line(-a,e,0,f);
  line(a,e,0,f);
  line(b,e,b,f);
  // 9
  line(-f,-b,-f,0);
  line(-45,-b,-35,0);
  line(-35,-b,-45,0);
  // the rest of numbers from top to bottom, and from bottom to top
  strokeWeight(5);
  stroke(255,134,247);
  point(d,-e);
  point(e,-c);
  point(e,c);
  point(d,e);
  point(-c,e);
  point(-e,c);
  point(-e,c);
  point(-d,-e);
  point(-e,-c);
  
  // Draw clock pendulum
  noStroke();
  fill(77,43,0);
  ellipse(-c,g-b,8,8);
  ellipse(-c,g,8,8);
  ellipse(-c,g+b,8,8);
  ellipse(-c,g+c,8,8);
  ellipse(-c,g+d,8,8);
  ellipse(-c,g+e,8,8);
  
  ellipse(c,g-b,8,8);
  ellipse(c,g,8,8);
  ellipse(c,g+b,8,8);
  ellipse(c,g+c,8,8);
  ellipse(c,g+d,8,8);
  ellipse(c,g+e,8,8);
  ellipse(c,g+f,8,8);
  ellipse(c,h-e,8,8);
  ellipse(c,h-d,8,8);
  
  
  
 
  strokeWeight(0);
  stroke(77,43,0);
  fill(209,119,0);
  ellipse(-c,g+f,b,b);
  ellipse(-c,h-d,c,f);
  
  ellipse(c,h-c,b,b);
  ellipse(c,h+b,c,f);
  
  strokeWeight(2);
  line(-b,g+f,-d,h-d);
  line(-b,h-d,-d,h-b);
  line(-d,g+f,-b,h-d);
  line(-d,h-d,-b,h-b);
  
  line(b,h-b,d,h);
  line(b,h,d,h+c);
  line(d,h-b,b,h);
  line(d,h,b,h+c);
  
   // the flower above the dial
  translate(0,-90);
  
  strokeWeight(1);
  stroke(255);
  fill(255);
  ellipse(0,-b,a,c);
  ellipse(b,0,c,a);
  ellipse(0,b,a,c);
  ellipse(-b,0,c,a);
  
  
  strokeWeight(8);
  stroke(134,232,255);
  point(0,0);
  
  translate(0,90);
  strokeWeight(3);
  stroke(0);
  fill(255);
  
  
  // Clock goes by changing mouseX FROM LEFT TO RIGHT
  float theta = PI *2*mouseX/(0.5*width);
  rotate(theta);
  line(0,b,0,-c);
  ellipse(0,0,c,c);
    
  float delta= PI*2*mouseX/(0.05*height);
  rotate(delta);
  line(0,b,0,-d);
  ellipse(0,0,c,c);
  // Rotate the flower
  popMatrix();
  translate(0,-90);
  pushMatrix();
  
  strokeWeight(1);
  stroke(255);
  fill(255);
  rotate(PI/4);
  ellipse(0,-b,a,c);
  ellipse(b,0,c,a);
  ellipse(0,b,a,c);
  ellipse(-b,0,c,a);
  strokeWeight(8);
  stroke(134,232,255);
  point(0,0);
  
  // Draw a windwheel and spin it
  
  popMatrix();
  translate(0,-60);
  rotate(radians(frameCount));
  strokeWeight(1);
  stroke(0);
  fill(49,28,0);
  quad(d,-f,f,-d,-d,f,-f,d);
  quad(-d,-f,-f,-d,d,f,f,d);
  }
}
