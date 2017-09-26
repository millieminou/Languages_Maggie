//"BEACH BIRDS"
//PRESS MOUSE TO MAKE BIRDS FLY TOWARD YOU
//PRESS ANY KEY TO CLEAR COMPOSITION


PImage img;

void setup() {
  background(#c1fff4);
  size (595, 564);
    img = loadImage ("beach.png");
    image (img, 0, 0);
     }

void draw (){
}

void mousePressed(){  
    img = loadImage ("beach.png");
    image (img, 0, 0);
    
  r=random(255);
  g=random(255);
  b=random(255);
  a=(255);
  noStroke();
  fill(r,g,b,a);
  
//body and wings
circleW = circleW + change;
circleH = circleH + change;
circleW2 = circleW2 + change;
circleH2 = circleH2 + change/2;

ellipse(mouseX, mouseY, circleW2, circleH2);       
ellipse(mouseX, mouseY, circleW, circleH);


//eyes and beak
circleW3 = circleW3 +change/4;
circleH3= circleH3 +change/4;
circleW4= circleW4 +change/4;
circleH4= circleH4 + change/4;
tri= tri + change/4;
tri2 = tri2 + change/2;

noStroke();
  fill(0);
ellipse(mouseX - circleW/6, mouseY, circleW3, circleH3);
ellipse(mouseX + circleW/6, mouseY, circleW4, circleH4);

fill(#ff8212);
triangle(mouseX - tri, mouseY + tri, mouseX + tri, mouseY +tri, mouseX, mouseY + tri2);  
}

void keyPressed (){
background(#c1fff4);
  size (595, 564);
  img = loadImage ("beach.png");
    image (img, 0, 0);
  
}

float circleW = 100;
float circleH = 50;
float circleW2 = 300;
float circleH2 = 10;
float circleW3 = 2;
float circleH3= 2;
float circleW4= 2;
float circleH4= 2;
float change = 15;
float tri=2;
float tri2=4;
float r;
float g;
float b;
float a;