PImage[] myImageArray = new PImage[5];

PImage[] myImageArraytest = new PImage[3];

String state = "hell";
PImage img;
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

//timers//
int timer1=4000; 
int timer2= 8000;
int timer3= 11000;
int timer4= 14000;
int timer5= 17000;
int timer6= 20000;
int timer7= 22000;
int timer8 = 300000;
int currentTime=0; 
int restart=0;


void setup() {
  background(0);
  size (1080, 720);
  x=0;
  y=0;
  
  ////
   for (int i=0; i<myImageArray.length; i++) {
    myImageArray[i] = loadImage( "frag" + i + ".jpg");
  }
  ////test
  for (int i=0; i<myImageArraytest.length; i++) {
    myImageArraytest[i] = loadImage( "status" + i + ".jpg");
  }
  
}

void draw() {
currentTime=millis();
    
//////////////PREGAME//////////////////////////
if (state == "hell"){
   background(0);
   text("Click to enter hell.", width/2, height/2);
   restart = currentTime;
  }
////////////////////////////////////////////////////////

////////////////INTRO///////////////////////////////
  else if (state == "intro") {
    img = loadImage ("firstscreen_test.jpg");
    image(img, x, y);
     if (currentTime-restart>timer1){
     img = loadImage ("firstscreen_test.jpg");
     image(img, x,y);
     y = y-10;
    println("timer 1 is triggered");
    if (currentTime-restart>timer2){
      img=loadImage("comment.jpg");
      image(img, 0, 0);
          println("timer 2 is triggered");
    if (currentTime-restart>timer3){
      ///closeup of picture and name strobing
      fill(255);
      rect(0,0,1080,720);
      fill(r1,g1,b1);
      r1 = r1 + 20;
      g1 = g1 +20;
      b1 = b1 + 20;
      
    text ("chad blad", 50, 70);
    
        println("timer 3 is triggered");
        
        if (currentTime-restart>timer4){
          fill(255);
          
      rect(0,0,1080,720);
          fill(r2,g2,b2);
          r2 = r2 -20;
          g2 = g2 -20;
          b2 = b2 -20;
           text ("chad blad", 50, 70);
        println("timer 4 is triggered");
        
        if (currentTime-restart>timer5){
      ///closeup of picture and name strobing
      fill(255);
      rect(0,0,1080,720);
      
      fill(r3,g3,b3);
      r3 = r3 + 20;
      g3 = g3 +20;
      b3 = b3 + 20;
      
    text ("chad blad", 50, 70);
    
        println("timer 5 is triggered");
        
        

if (currentTime-restart>timer6){
      ///closeup of picture and name strobing
      fill(255);
      rect(0,0,1080,720);
      fill(r4,g4,b2);
      r4 = r4 -20;
      g4 =g4-20;
      b4 = b4 -20;
      
    
    text ("chad blad", 50, 70);
  
       println("timer 6 is triggered");

if (currentTime-restart>timer7){
      ///closeup of picture and name strobing
      fill(255);
      rect(0,0,1080,720);
      fill(0);
    text ("chad blad", 50, 70);
    fill(214,152, 152, 50);
    noStroke();
    ellipse (80,70, 100, 50);
       println("timer 7 is triggered");
         
//////////////////////END TIMER///////////////////
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
////////////////////////////////////////  

///////////////PROFILE/////////////////////
  else if (state == "profile"){
   
    background(255);
    fill(#34d5c4);
    rect(40,40,40,40);//photos
    rect(100,40,40,40);//about
    rect(160,40,40,40); //statuses
    text("this is my profile", width/2, height/2 + 100);
  }
///////////////////////////////////////////  

////////////PHOTOS////////////////////
  else if (state == "photos"){
    background(255);
        fill(#34d5c4);
   rect(40,40,40,40); //back button test
   img =loadImage("frag0.jpg");
   image(img,width/2-50, height/2-50, 100, 100);
  }
///////////////////////////////////////


///////////ABOUT/////////////////
  else if (state == "about"){
    background(255);
        fill(#34d5c4);
    text("my names chad", width/2, height/2 + 100);
    rect(40,40,40,40); //back button test

  }
/////////////////////////////////

///////////STATUSES/////////////////
  else if (state == "statuses"){
    background(255);
        fill(#34d5c4);
    text("my mind is a castle", width/2, height/2 + 100);
    rect(40,40,40,40); //back button test
  }
////////////////////////////////////
}






/////////MOUSE CLICKS///////////////
void mousePressed(){
  
////////INTRO CLICK///////  
if (state == "hell"){
  state = "intro";
}
///////////////////////////

/////CLICK TO PROFILE/////
else if (state == "intro"){
  state = "profile";
}
////////////////////////////

////////MAIN PROFILE CLICKS/////////
else if ((state == "profile")&&(mouseX>40 && mouseX<80 && mouseY>40 && mouseY<80)){
state = "photos";
}

else if ((state == "profile")&&(mouseX>100 && mouseX<140 && mouseY>40 && mouseY<80)){
state = "about";
}

else if ((state == "profile")&&(mouseX>160 && mouseX<200 && mouseY>40 && mouseY<80)){
state = "statuses";
}
//////////////////////////////////


//////////PHOTOS CLICKS///////////
//backbutton
else if ((state == "photos")&&(mouseX>40 && mouseX<80 && mouseY>40 && mouseY<80)){
state = "profile";

}
//pics

else if ((state == "photos")&&(mouseX>80 && mouseY>80)){
  state = "randompics";
}

else if((state == "randompics")&&(mouseX>80 &&mouseY>80)){
  image(myImageArray[(int)random(5)], width/2-50, height/2-50, 100, 100);
}

//backbutton
else if((state == "randompics")&&(mouseX>40 && mouseX<80 && mouseY>40 && mouseY<80)){
state = "profile";
}
//////////////////////////////////


///////////STATUS CLICKS//////////
///back button
else if ((state == "statuses")&&(mouseX>40 && mouseX<80 && mouseY>40 && mouseY<80)){
state = "profile";
}


else if ((state == "statuses")&&(mouseX>80 && mouseY>80)){
  state = "randomstatus";
}

else if((state == "randomstatus")&&(mouseX>80 &&mouseY>80)){
  image(myImageArraytest[(int)random(3)], width/2-50, height/2-50, 100, 100);
}

//backbutton
else if((state == "randomstatus")&&(mouseX>40 && mouseX<80 && mouseY>40 && mouseY<80)){
state = "profile";
}
///////////////////////////////////


///////////ABOUT CLICKS///////////////////
///back button
else if ((state == "about")&&(mouseX>40 && mouseX<80 && mouseY>40 && mouseY<80)){
state = "profile";
}
///////////////////////////////////

/////////END OF MOUSE CLICKS////////////////////////////
}