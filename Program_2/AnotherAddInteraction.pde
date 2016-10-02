/*
This is a house on the hill.
Author: Nuna Ngoc Duong and Yunyi Ding
*/

void setup() {
  size(500,500);
  smooth();
  ellipseMode(CENTER);
  frameRate(30);
}

int t=350;
int w=600;
int a=50;
int b=100;
int c=150;
int d=200;
int e=250;
int f=300;
int g=350;
int h=400;
int i=450;
int j=500;
float r=40;
float v=270;
float circleX=40;
float circleY=20;

 
void draw(){
  background(0,0,0,150);
  
  //hill
  noStroke();
  fill(0,130,65,100);
  ellipse(250,450,w,t);
  
  //stars
  strokeWeight(3);
  stroke(255);
  point(random(0,500), random(0,250));
  
  //raindrops
  noStroke();
  fill(38,65,249,200);
  ellipse(random(0,500),random(0,500),8,15);
  
  //Draw a chimney
  strokeWeight(2);
  stroke(0);
  fill(0);
  rect(mouseX-80,mouseY-120,20,60);
    
  fill(103,59,0,250);
  quad(mouseX-b,mouseY-a,mouseX,mouseY-b,mouseX,mouseY-b+30,mouseX-c+20,mouseY);
  quad(mouseX,mouseY-b,mouseX+b,mouseY-a,mouseX+c-20,mouseY,mouseX,mouseY-b+30);
    
  fill(a+4,a-13,0,e);
  quad(mouseX,mouseY-b+30,mouseX+c-20,mouseY,mouseX+c-30,mouseY+10,mouseX,mouseY-a);
  quad(mouseX-c+20,mouseY,mouseX,mouseY-a-20,mouseX,mouseY-a,mouseX-c+30,mouseY+10);
  
  //Draw the body of house
  fill(e-10,d+9,a-19,e);
  quad(mouseX-b,mouseY,mouseX,mouseY-a,mouseX,mouseY+b,mouseX-b,mouseY+b);
  quad(mouseX,mouseY-a,mouseX+b,mouseY,mouseX+b,mouseY+b,mouseX,mouseY+b);
  stroke(e-10,d+9,a-19,e);
  line(mouseX,mouseY-a,mouseX,mouseY+b);
  
  //Draw windows on the body
  stroke(0);
  fill(233,255,3);
  rect(mouseX-a,mouseY-20,b,a-10);
  line(mouseX-30,mouseY-20,mouseX-30,mouseY+20);
  line(mouseX+30,mouseY-20,mouseX+30,mouseY+20);
  line(mouseX-a,mouseY+b,mouseX-30,mouseY+b);
  strokeWeight(5);
  stroke(67,45,1,250);
  line(mouseX,mouseY-20,mouseX,mouseY+20);
  line(mouseX-30,mouseY,mouseX+30,mouseY);
}

void keyPressed(){
  println("Good Night!");
}
  
  

  
