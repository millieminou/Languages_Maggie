PImage img;
PImage img2;
PImage img3;
int currentTime = 0;

Sky[] skystuff = new Sky[5];

import processing.sound.*;
SoundFile song;

void setup() {
 song = new SoundFile(this, "autumn.mp3");
  song.loop();
  img = loadImage ("leaves.png");
  img2 = loadImage ("background.png");
  img3 = loadImage ("winterbackground.jpg");
  size(987,720);
  for (int i = 0; i < skystuff.length; i++){
    skystuff[i] = new Sky();
}
}

void draw() {
  currentTime = millis();
  background(#acd6d9);
  //call methods on the object from within draw()
    for (int i = 0; i < skystuff.length; i++){
  skystuff[i].cloud(); 
  skystuff[i].fall();
    image (img2,0,0);
    }
    if(mousePressed){
    background(img3);
  }

}