// This is a picture of a house.
// Author: Yunyi Ding

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
int z=0;
int u=220;
int speed=1;
float r=40;
float v=270;
float circleX=40;
float circleY=20;

void setup(){
  size(j,f);
  smooth();
  frameRate(30);
  ellipseMode(CENTER);
}

    void draw(){
    //Draw footprint
    if(mouseX>width/2){
    
    background(a-15,a-15,b+16,c);
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
    
    // Draw a sign
    strokeWeight(2);
    stroke(0);
    fill(0);
    quad(mouseX-d,mouseY,mouseX-d+20,mouseY,mouseX-d,mouseY+b,mouseX-d-20,mouseY+b);
    
    fill(187,130,234);
    quad(mouseX-350+120,mouseY-150+170,mouseX-350+200,mouseY-150+180,mouseX-350+180,mouseY-150+220,mouseX-350+110,mouseY-150+190);
    triangle(mouseX-350+200,mouseY-150+180,mouseX-350+210,mouseY-150+200,mouseX-350+180,mouseY-150+220);
    
    //Draw flowers
    noStroke();
    fill(random(255),random(255),random(255),random(255));
    rect(40,220,20,20);
    rect(80,230,10,10);
    rect(100,210,10,10);
    rect(150,270,10,10);
    rect(100,260,30,30);
    rect(220,270,20,20);
    rect(260,240,10,10);
    rect(470,250,30,30);
    
    //Draw footprint
    noStroke();
    fill(random(50));
    ellipse(r,v,circleX,circleY);
    ellipse(r+40,v-10,circleX/2,circleY/2);
    ellipse(r+80,v-20,circleX/4,circleY/4);
    
    //Draw moon
    noStroke();
    fill(255,255,0);
    ellipse(b,a,a-10,a-10);
    
    //Draw stars;
    strokeWeight(10);
    stroke(255);
    point(random(0,500),random(0,300));
    point(random(250,500),random(0,150));
    point(random(0,250),random(0,150));
    
    //Draw fence
    z =z+speed;
    if((z>width)||(z<0)){
      speed=speed* -1;
    }
    strokeWeight(15);
    stroke(255);
    line(0,240,500,240);
    fill(255);
    rect(z,u,20,60);
    }else{
   background(157,224,232,150);
   
   //Draw some grass
    noStroke();
    fill(125,222,121,150);
    rect(0,150,500,150);
   
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
    fill(255);
    rect(mouseX-a,mouseY-20,b,a-10);
    line(mouseX-30,mouseY-20,mouseX-30,mouseY+20);
    line(mouseX+30,mouseY-20,mouseX+30,mouseY+20);
    line(mouseX-a,mouseY+b,mouseX-30,mouseY+b);
    
    strokeWeight(5);
    stroke(67,45,1,250);
    line(mouseX,mouseY-20,mouseX,mouseY+20);
    line(mouseX-30,mouseY,mouseX+30,mouseY);
    
    // Draw a sign
    strokeWeight(2);
    stroke(0);
    fill(0);
    quad(mouseX-d,mouseY,mouseX-d+20,mouseY,mouseX-d,mouseY+b,mouseX-d-20,mouseY+b);
    
    fill(187,130,234);
    quad(mouseX-350+120,mouseY-150+170,mouseX-350+200,mouseY-150+180,mouseX-350+180,mouseY-150+220,mouseX-350+110,mouseY-150+190);
    triangle(mouseX-350+200,mouseY-150+180,mouseX-350+210,mouseY-150+200,mouseX-350+180,mouseY-150+220);
    
    //Draw flowers
    noStroke();
    fill(random(255),random(255),random(255),random(255));
    rect(40,220,20,20);
    rect(80,230,10,10);
    rect(100,210,10,10);
    rect(150,270,10,10);
    rect(100,260,30,30);
    rect(220,270,20,20);
    rect(260,240,10,10);
    rect(470,250,30,30);
    
    //Draw footprint
    noStroke();
    fill(random(50));
    ellipse(r,v,circleX,circleY);
    ellipse(r+40,v-10,circleX/2,circleY/2);
    ellipse(r+80,v-20,circleX/4,circleY/4);
    
    //Draw sun
    noStroke();
    fill(232,99,9);
    ellipse(b,a,a-10,a-10);
    
    //Draw fence
    z =z+speed;
    if((z>width)||(z<0)){
      speed=speed* -1;
    }
    strokeWeight(15);
    stroke(255);
    line(0,240,500,240);
    fill(255);
    rect(z,u,20,60);
  }
}
   
  void keyPressed(){ 
    if(mouseX>width/2){
    println("Good Night!");
    }else{
    println("Good Morning!");
  }
}



