Button[] buttons;


PImage Paula; 
PImage smile;
PImage happy;
PImage laugh;
PImage sad;
PImage notFunny;


float rel;

PImage currentP;

boolean gameOver = false;

int posttalk=0;
int posttalklimit = 7;



void setup(){
  makeButtons();
  frameRate(5);
  size(1000,1000);
  Paula = loadImage("paula.jpg");
  smile = loadImage("pSmile.jpg");
  happy = loadImage("pHappy.jpg");
  laugh = loadImage("pLaugh.jpg");
  sad = loadImage("paulaSad.jpg");
  notFunny = loadImage("pNotFunny.jpg");
  currentP = Paula;
  rel = 70;
  textSize(18);
  
  noLoop();
}

void mouseClicked()
{
 for (int i=0;i<buttons.length;i++){
   if (buttons[i].isOver(mouseX,mouseY)) {
     buttons[i].doAction();
   }
 } 
}
float s;
void relationship(){   

rel = rel-s; //the stronger relationship the slower decrease
  if (rel<0){
    rel = 0;
    
  }
  if ((rel>=0) && (rel<50)) {
    currentP = sad;
    s=1.2;

   
  }
 else if ((rel>=50) && (rel<120)) {
  currentP = Paula;

  s=.7;

  }
   else if ((rel>=120) && (rel<170)){
   currentP = smile;
   
   s=.3;

  }
  else if (rel>200) {
    rel=200;
  }
  
  else {
    currentP = happy;
    s=.2;
    
    
  }
}

void status(){
   
  textAlign(LEFT,TOP);
  if (rel<=0) {
    
    text("STRANGERS",270,135);
  }
  
 else if (rel<50) {
   
    text("NOT FRIENDS", 270,135);
    
  }
 else if ((rel>=50) && (rel<120)) {
    
   text("FRIENDS",270,135);
  
  }
   else if ((rel>=120) && (rel<170)){
 
   text("BEST FRIENDS",270,135);
  }
  else {
    text("BFF",270,135);
    
  }
}
  

void draw()
{
   background(255);
    
  
   drawButtons();
   
  
    
   noFill();
   rect(270,115,200,20);
   fill(0,255,0);
   rect(270,115,rel,20);
   fill(0);
   textAlign(LEFT,BOTTOM);
   text("relationship status:",270,115);  //relationship bar
   status();
    
    
   image(currentP,150,220,750,800);
   
   
   
   
   
   if (posttalk==0)  {
     
     relationship();
     
     }
   else
     {
      posttalk = posttalk - 1;
     
     }
    
 
   
  
   
   if (gameOver) 
   {
     noLoop();
   }
   println("relationship ",rel);
}


void makeButtons()
{
  buttons = new Button[5];
  buttons[0] = new StartButton(60,80,80,40, color(0,255,0),color(0), "start");
  buttons[1] = new StopButton(60,130,80,40, color(255,0,0),color(0), "stop");
  buttons[2] = new ResetButton(60,180,80,40, color(0,150,255), color(0), "reset");
  buttons[3] = new TalkButton(600,100,70,40, color(100),color(255), "talk");
  buttons[4] = new JokeButton(750,100,70,40, color(100), color(255), "joke");
}

void drawButtons()
{
  for (int i=0;i<buttons.length;i++)
  {
      buttons[i].display();
  }
}
