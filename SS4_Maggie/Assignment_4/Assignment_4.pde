PImage girlreading;
PImage girlreading2;
PFont font;

int time1 = 3000;
int time2 = 6000;
int time3 = 9000;
int time4 = 12000;
int time5 = 16000;
int time6 = 17000;

boolean button = false;

void setup(){
  size(800,656);
  girlreading = loadImage("girlreading.jpg");
  girlreading2 = loadImage("girlreading2.jpg");
  font = loadFont("BlackFlames-48.vlw");
  textFont(font);
}

void draw(){
  int currentTime = millis();

  image(girlreading,-2,-2,800,656);
  fill(252, 211, 255, 200);
  rect(-2,-2,800,656);
  
  if((currentTime > time1) && (currentTime < time2)){
  textSize(72);
  fill(#75bae1);
  text("Can you see me?", 530, 460,199,140);
  }else if ((currentTime > time2) && (currentTime < time3)){
  textSize(72);
  fill(#75bae1);
  text("You should come closer.", 370, 100,400,140);
  }else if ((currentTime > time3) && (currentTime < time4)){
  textSize(72);
  fill(#75bae1);
  text("Just click right here.", 100, 400,400,140);
  }else if ((currentTime > time4) && (currentTime < time5)){
  textSize(72);
  fill(#75bae1);
  text("Go ahead.", 100, 400,400,140);
  }else if (currentTime > time6){
  fill(252, 211, 255, 255);
  rect(-2,-2,800,656);
  textSize(72);
  fill(#75bae1);
  text("Okay, that's enough now.", 100, 400,400,140);
  }
  
  if((mousePressed) && (currentTime < time5)) {
    frameRate(.4);
   image(girlreading2,-2,-2,800,656);
   //smaller text
   textSize(70);
  fill(255, 203, 231, 180);
  text("That's better, right?", 120, 70, 300, 425);
  text("That's better, right?", 250, 400, 300, 425);
  text("That's better, right?", 510, 160, 300, 425);
  text("That's better, right?", 610, 460, 300, 425);
  text("That's better, right?", 40, 540, 300, 425);
  text("That's better, right?", 750, 10, 300, 425);
  //larger text
  textSize(85);
  fill(#e2fc72);
  text("That's better, right?", 50, 10, 300, 425);
  fill(#fc72d3);
  text("That's better, right?", 200, 350, 300, 425);
  fill(#fc7272);
  text("That's better, right?", 460, 100, 300, 425);
  fill(#9799ff);
  text("That's better, right?", 560, 400, 300, 425);
  fill(#ff9256);
  text("That's better, right?", -10, 500, 300, 425);
  fill(#00fe4e);
  text("That's better, right?",  700, -50, 300, 425);
  }
}