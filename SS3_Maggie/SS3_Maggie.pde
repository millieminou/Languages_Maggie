//HELLO AND GOODBYE
//MAGGIE BRENNAN
//MOUSE AROUND COMPOSITION TO SHIFT SHAPE
//PRESS MOUSE TO SAY "HELLO"
//PRESS ANY KEY TO SAY "GOODBYE"
// test comment

float r;
float g;
float b;

void setup(){
  size(600,600);
}

void draw(){
  frameRate(4);
  noStroke();
  
  //circle
  if(mouseX< 300 && mouseY < 300){
      background(#9eff8b);
      for (int x=50; x<600; x=x+50) {
  for (int y=50; y<600; y=y+50) {
  fill(x/1, y/20, 200, 50);
  noStroke();
  ellipse(x, y, 30, 30);
    }
  }
      fill(r,g,b);
    ellipse(300,300,300,300);
    
  //square
  }else if(mouseX >300 && mouseY <300){
    background(#affff3);
    for (int x=50; x<600; x=x+50) {
  for (int y=50; y<600; y=y+50) {
  fill(x/1, y/20, 200, 50);
  noStroke();
  ellipse(x, y, 30, 30);
    }
  }
 fill(r,g,b);
    rect(150,150,300,300);
  
//triangle
}else if (mouseX <300 && mouseY > 300){
    background(#d7d9ff);
    for (int x=50; x<600; x=x+50) {
  for (int y=50; y<600; y=y+50) {
  fill(x/1, y/20, 200, 50);
  noStroke();
  ellipse(x, y, 30, 30);
    }
  }
 fill(r,g,b);
    triangle(300,150,450,450,150,450);
  
//diamond
}else if (mouseX > 300 && mouseY >300){
  background(#ffe1d5);
  for (int x=50; x<600; x=x+50) {
  for (int y=50; y<600; y=y+50) {
  fill(x/1, y/20, 200, 50);
  noStroke();
  ellipse(x, y, 30, 30);
    }
  }
 fill(r,g,b);
    quad(300,150,450,300,300,450,150,300);
  }
  
r = random(200,255);
g = random(200,255);
b = random(200,255);
}

void keyPressed() {
  noLoop();
  background(r,g,b);
    textSize(80);
    text("GOODBYE", 115, 150); 
fill(0, 102, 153);
text("GOODBYE", 115, 300);
fill(0, 102, 153, 51);
text("GOODBYE", 115, 450);


}

void keyReleased() {
  loop();
}

void mousePressed(){
    noLoop();

    background(r,g,b);
    textSize(80);
    text("HELLO", 180, 150); 
fill(0, 102, 153);
text("HELLO", 180, 300);
fill(0, 102, 153, 51);
text("HELLO", 180, 450);

}

void mouseReleased(){
  loop();
}