int timer1=4000; 
int timer2= 8000;
int timer3= 11000;
int timer4 = 300000;
int currentTime=0; 
int restart=0;
String state = "hell";
PImage img;
float x;
float y;

void setup() {
  background(0);
  size (1080, 720);
  x=0;
  y=0;
}

void draw() {
currentTime=millis();
    
//////////////PREGAME//////////////////////////
if (state == "hell"){
   background(0);
   text("click to start", width/2, height/2);
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
      background(0);
    text ("you're invited", width/2, height/2 + 100);
        println("timer 3 is triggered");
//////////////////////END TIMER///////////////////
    if (currentTime-restart>timer4){
      background(0);
      text ("you've been doing this for 5 minutes", width/2, height/2+100);
          println("timer 4 is triggered");

     } 
    }
    }
     }
  }
////////////////////////////////////////  

///////////////PROFILE/////////////////////
  else if (state == "profile"){
   
    background(0);
    rect(40,40,40,40);//photos
    rect(100,40,40,40);//about
    rect(160,40,40,40); //statuses
    text("this is my profile", width/2, height/2 + 100);
  }
///////////////////////////////////////////  

////////////PHOTOS////////////////////
  else if (state == "photos"){
    background(0);
    text("pictures here", width/2, height/2 + 100);
    rect(40,40,40,40); //back button test
  }
///////////////////////////////////////

///////////ABOUT/////////////////
  else if (state == "about"){
    background(0);
    text("my names chad", width/2, height/2 + 100);
    rect(40,40,40,40); //back button test

  }
/////////////////////////////////

///////////STATUSES/////////////////
  else if (state == "statuses"){
    background(0);
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
///back button 
else if ((state == "photos")&&(mouseX>40 && mouseX<80 && mouseY>40 && mouseY<80)){
state = "profile";
}
  
//////////////////////////////////


///////////STATUS CLICKS//////////
///back button
else if ((state == "statuses")&&(mouseX>40 && mouseX<80 && mouseY>40 && mouseY<80)){
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