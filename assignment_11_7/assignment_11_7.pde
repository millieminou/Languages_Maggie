PImage img;
PImage img2;

Stripe[] stripes = new Stripe[10];

void setup(){
  img = loadImage ("leaves.png");
  img2 = loadImage ("testing.png");
  size(1080,620);
  for (int i = 0; i < stripes.length; i++){
    stripes[i] = new Stripe();
  }
}

void draw(){
  background(#acd6d9);
  for (int i = 0; i < stripes.length; i++){
    stripes[i].rollover(mouseX,mouseY);
    stripes[i].move();
    stripes[i].display();
    image (img2,0,0);
  }
}

class Stripe{
  float x;
  float speed;
  float w;
  float y;
  boolean mouse;

Stripe(){
  x = 0;
  y = 0;
  speed = random(1);
  w = random(10,30);
  mouse = false;
}

void display(){
  if(mouse){
    fill(255);
  }else{
    image (img, x,y);
    fill(255,50);
  }
  noStroke();
  rect(x,0,800,y);
}

void move(){
  y += speed;
  if (y>width + 20) y = -20;
}

void rollover(int mx, int my){ 
  if((mx > x && mx < x + width) && (my> y && my < y + height)) {
  mouse = true;
}else{
  mouse = false;
}
}
}