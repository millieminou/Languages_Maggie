class Sky {
  float x, y; //position
  float speed;
  
  //constructor
  Sky(){
    x = 0;
    y = 0;
    speed = random(1);
    
  }
  
  void cloud(){
   fill(255,20);
     fill(255,50);
  noStroke();
  rect(x,0,987,y);
 y += speed;
 if (y>width + 20) y = -20;
  }


void fall() {
    if (currentTime>7000) {
      image (img, x, y);
  }else{
}
}

void snow() {
  if(mousePressed){
    image (img4,x,y);
}
}

}