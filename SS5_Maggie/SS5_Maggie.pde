//Maggie Brennan
//Assignment 5
//song: "Automne Dans Un Miroir" by Tamao Koike 

PImage img;
PImage img2;
PImage img3;

import processing.sound.*;
SoundFile song;

Stripe[] stripes = new Stripe[5];

void setup(){
  song = new SoundFile(this, "autumn.mp3");
  song.loop();
  img = loadImage ("leaves.png");
  img2 = loadImage ("background.png");
  img3 = loadImage ("winterbackground.jpg");
  size(987,720);
  for (int i = 0; i < stripes.length; i++){
    stripes[i] = new Stripe();
  }
}

void draw(){
  background(#acd6d9);
  for (int i = 0; i < stripes.length; i++){
    stripes[i].move();
    stripes[i].display();
    image (img2,0,0);
  }
  if(mousePressed){
    background(img3);
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
    fill(255,20);
  }else{
      image (img, x,y);
    fill(255,50);
  }
  noStroke();
  rect(x,0,987,y);

}

void move(){
  y += speed;
  if (y>width + 20) y = -20;
}


}