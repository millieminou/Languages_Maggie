//"Hell"
//by Maggie Brennan
//Midterm Assignment for 
//"Languages" @ Pratt 
//with Allison Berkoy

//sound
import processing.sound.*;
SoundFile song;

//arrays
PImage[] photos = new PImage[5];
PImage[] statuses = new PImage[5];

//strings
String state = "hell";

//image variables
PImage img;
PFont font;
float x;
float y;
float r1 = 0;
float g1 = 0;
float b1 = 0;
float r2 = 220;
float g2 = 220;
float b2 = 220;
float r3 = 0;
float g3 = 0;
float b3 = 0;
float r4 = 220;
float g4 = 220;
float b4 = 220;

//timers
int timer1=3000; 
int timer2= 9000;
int timer3= 16500;
int timer4= 18500;
int timer5= 20500;
int timer6= 23000;
int timer7= 25000;
int timer8 = 300000;
int currentTime=0; 
int restart=0;


void setup() {  
  background(0);
  size (1080, 720);
  font = loadFont("Futura-Medium-48.vlw");
  textFont(font);
  
  song = new SoundFile(this, "mildundleise.mp3");
  song.loop();
  
  x=0;
  y=0;
  
  
   for (int i=0; i<photos.length; i++) {
    photos[i] = loadImage( "pic" + i + ".jpg");
  }

  for (int i=0; i<statuses.length; i++) {
    statuses[i] = loadImage( "status" + i + ".jpg");
  }
  
}


void draw() {
currentTime=millis();
    
/////////////////////PREGAME//////////////////////////
if (state == "hell"){
   background(0);
   fill(#e8c7ff);
   text("Click to enter hell.", 357, height/2);
   restart = currentTime;
  }
//////////////////////////////////////////////////////

/////////////////////INTRO////////////////////////////
  else if (state == "intro") {
      img = loadImage ("firstscreen1.jpg");
      image(img, x, y);
    if (currentTime-restart>timer1){
      img = loadImage ("firstscreen1.jpg");
      image(img, x,y);
       y = y-10;
       println("timer 1 is triggered");
    if (currentTime-restart>timer2){
       img=loadImage("comment1.jpg");
       image(img, 0, 0);
       println("timer 2 is triggered");
    if (currentTime-restart>timer3){
       img=loadImage("closeup.jpg");
       image(img,0,0);
       textSize(58);
       fill(r1,g1,b1);
       r1 = r1 + 20;
       g1 = g1 +20;
       b1 = b1 + 20;
       text ("CHAD JONES", 347.4, 233.8);
       println("timer 3 is triggered");
   if (currentTime-restart>timer4){
       img=loadImage("closeup.jpg");
       image(img,0,0);
       textSize(58);
       fill(r2,g2,b2);
       r2 = r2 -20;
       g2 = g2 -20;
       b2 = b2 -20;
       text ("CHAD JONES", 347.4, 233.8);
       println("timer 4 is triggered");
   if (currentTime-restart>timer5){
      img=loadImage("closeup.jpg");
      image(img,0,0);
      textSize(58);
      fill(r3,g3,b3);
      r3 = r3 + 20;
      g3 = g3 +20;
      b3 = b3 + 20;
      text ("CHAD JONES", 347.4, 233.8);
      println("timer 5 is triggered");
   if (currentTime-restart>timer6){
      img=loadImage("closeup.jpg");
      image(img,0,0);
      textSize(58);
      fill(r4,g4,b2);
      r4 = r4 -20;
      g4 =g4-20;
      b4 = b4 -20;
      text ("CHAD JONES", 347.4, 233.8);
      println("timer 6 is triggered");
   if (currentTime-restart>timer7){
      img=loadImage("closeup.jpg");
      image(img,0,0);
      textSize(58);
      fill(0);
      text ("CHAD JONES", 347.4, 233.8);
      fill(214,152, 152, 50);
      noStroke();
      ellipse (550,210.5, 524, 140);
      println("timer 7 is triggered");
//////////////////////////////////////////////////////         
         
////////////////////ENDGAME & TIMER///////////////////
    if (currentTime-restart>timer8){
      background(0);
      text ("Why are you doing this to yourself? Go outside or something.", width/2, height/2+100);
          println("timer 8 is triggered");
    }
    } 
    }
    }
    }
    }
    }
    }
    }
//////////////////////////////////////////////////////  

/////////////////////PROFILE//////////////////////////
  else if (state == "profile"){
    ///add profile 
    img=loadImage("closeup.jpg"); 
    image(img,0,0);
    noStroke();
    fill(#e8c7ff);
    rect(40,40,40,40);//photos
    rect(100,40,40,40);//about
    rect(160,40,40,40); //statuses
  }
/////////////////////////////////////////////////////  

/////////////////////PHOTOS//////////////////////////
  else if (state == "photos"){
   img=loadImage("photosmainpage.jpg"); 
   image(img,0,0);
   fill(#34d5c4);
  }
/////////////////////////////////////////////////////


/////////////////////ABOUT//////////////////////////
  else if (state == "about"){
    img=loadImage("aboutpage.jpg"); 
    image(img,0,0);
  }
///////////////////////////////////////////////////

////////////////////STATUSES//////////////////////
  else if (state == "statuses"){
 img=loadImage("statusespage.jpg"); 
    image(img,0,0);
  }
///////////////////////////////////////////////////

}






////////////////////MOUSE CLICKS////////////////////
void mousePressed(){
  
////////////////////INTRO CLICK////////////////////  
if (state == "hell"){
  state = "intro";
}
///////////////////////////////////////////////////

/////////////////CLICK TO PROFILE/////////////////
else if (state == "intro"){
  state = "profile";
}
///////////////////////////////////////////////////

//////////////MAIN PROFILE CLICKS/////////////////
else if ((state == "profile")&&(mouseX>40 && mouseX<80 && mouseY>40 && mouseY<80)){
state = "photos";
}

else if ((state == "profile")&&(mouseX>100 && mouseX<140 && mouseY>40 && mouseY<80)){
state = "about";
}

else if ((state == "profile")&&(mouseX>160 && mouseX<200 && mouseY>40 && mouseY<80)){
state = "statuses";
}
///////////////////////////////////////////////////


////////////////////PHOTOS CLICKS//////////////////
//back button
else if ((state == "photos")&&(mouseX>8 && mouseX<260 && mouseY>100 && mouseY<170)){
state = "profile";
}

//random pics
else if ((state == "photos")&&(mouseX>350 && mouseY>200)){
  state = "randompics";
}
else if((state == "randompics")&&(mouseX>350 &&mouseY>200)){
  image(photos[(int)random(5)], 194, 232, 691, 467);
}

//back button after activating pics
else if((state == "randompics")&&(mouseX>8 && mouseX<260 && mouseY>100 && mouseY<170)){
state = "profile";
}
///////////////////////////////////////////////////


////////////////STATUS CLICKS/////////////////////
//back button
else if ((state == "statuses")&&(mouseX>8 && mouseX<260 && mouseY>100 && mouseY<170)){
state = "profile";
}

//random statuses
else if ((state == "statuses")&&(mouseX>350 && mouseY>200)){
  state = "randomstatus";
}
else if((state == "randomstatus")&&(mouseX>350 &&mouseY>200)){
  image(statuses[(int)random(5)], 195.3, 232.9, 693, 358);
}

//back button after statuses activated
else if((state == "randomstatus")&&(mouseX>8 && mouseX<260 && mouseY>100 && mouseY<170)){
state = "profile";
}
///////////////////////////////////////////////////


////////////////ABOUT CLICKS//////////////////////
//back button
else if ((state == "about")&&(mouseX>8 && mouseX<260 && mouseY>100 && mouseY<170)){
state = "profile";
}
//////////////////////////////////////////////////


/////////END OF MOUSE CLICKS//////////////////////
}