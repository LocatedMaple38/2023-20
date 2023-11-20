color resetDefaultInk=#000000, black = #000000; 
boolean next=false; 
boolean quit = false;
boolean card = false;

PImage rectQuit;
PImage Clame;
PImage Quot;
PImage DidYouKnow;
PFont titleFont, footerFont;

float xTitle, yTitle, widthTitle, heightTitle ;
float xFooter, yFooter, widthFooter, heightFooter;
float xRectQuit, yRectQuit, widthRectQuit, heightRectQuit;
float xClame, yClame, widthClame, heightClame;
float xNext, yNext, withNext, heightNext;
float xNightMode, yNightMode, withNightMode, hightNightMode;
float xQuot, yQuot, withQuot, hightQuot;
float xDidYouKnow, yDidYouKnow, withDidYouKnow, hightDidYouKnow;
float xQuitYes, yQuitYes, widthQuitYes, heightQuitYes;
float xQuitNo, yQuitNo, widthQuitNo, heightQuitNo;
float xQuitText, yxQuitText, widthxQuitText, heightxQuitText;
float xQuitBackground, QuitBackground, widthQuitBackground, heightQuitBackground;
float xNextOpen, yNextOpen, widthNextOpen, heightNextOpen;
float xCardMain, yCardMain, widthCardMain, heightCardMain;

int brightnessNumber;
int appWidth, appHeight;
int NightMode;
int sizeFont, size;

void setup() {
  
  println("Width:"+width, "\t", "Height:"+height);
  println("Display Width: "+displayWidth, "\tDisplay Height: "+displayHeight);
  size(500, 500);
  
  appWidth = width;
  appHeight = height;
  
  xNextOpen = appWidth*9/10;
  yNextOpen = appHeight*9/10;
  widthNextOpen = appWidth*1/2;
  heightNextOpen = appHeight*1/10;
  
  xCardMain = appWidth*1/2;
  yCardMain = appHeight*1;
  widthCardMain = appWidth*1/2;
  heightCardMain = appHeight*1;
  
  xQuitNo = appWidth*3/4;
  yQuitNo = appHeight*1/2;
  widthQuitNo = appWidth*1/8;
  heightQuitNo = appHeight*1/8;
  
  xQuitBackground = appWidth*0;
  QuitBackground = appHeight*0;
  widthQuitBackground = appWidth;
  heightQuitBackground = appHeight;
  
  xQuitYes = appWidth*1/4;
  yQuitYes = appHeight*1/2;
  widthQuitYes = appWidth*1/8;
  heightQuitYes = appHeight*1/8;
  
  xQuot = appWidth*0;
  yQuot = appHeight*0;
  withQuot = appWidth;
  hightQuot = appHeight;
  Quot = loadImage("hello/Quot1.jpg");
  
  xTitle = appWidth*1/4;
  yTitle = appHeight*1/8;
  widthTitle = appWidth*1/2;
  heightTitle= appHeight*1/10;
  
  xFooter = appWidth*1/4;
  yFooter = appHeight*1/4;
  widthFooter = appWidth*1/2;
  heightFooter = appHeight*1/10;
  
  xRectQuit = appWidth*18/20-1;
  yRectQuit = appHeight*0/20;
  widthRectQuit = appWidth*1/10;
  heightRectQuit = appHeight*1/10;
  rectQuit = loadImage("hello/exet.png");
  
  xClame = appWidth*3/8;
  yClame = appHeight*3/4;
  widthClame = appWidth*1/4;
  heightClame = appHeight*1/10;
  Clame = loadImage("hello/next.png");
  
  xNightMode = appWidth*0;
  yNightMode = appHeight*0;
  withNightMode = appWidth*1/25; 
  hightNightMode = appHeight*1/25; 
  
  titleFont = createFont("ArialMT", 1);
  footerFont = createFont("ArialMT", 1); 
}
void draw(){
  if(quit == true){
    quitCom();
    card = false;
  }
  if(card == true){
    card();
  }
  if(card == false){
    rect(xNextOpen, yNextOpen, widthNextOpen, heightNextOpen);
    rect(xCardMain, yCardMain, widthCardMain, heightCardMain);
  }
}
void keyPressed() {}
void mousePressed() {
  println("Mouse X: ", mouseX, "Mouse Y: ", mouseY);
  if (card == true && mouseX>xRectQuit && mouseX<xRectQuit+widthRectQuit && mouseY>yRectQuit && mouseY<yRectQuit+heightRectQuit ){
    quit = true;
  }else{
    quit = false;
  }
  if (card == true && mouseX>xClame && mouseX<xClame+widthClame && mouseY>yClame && mouseY<yClame+heightClame){
    println("claimed");
  }
  if(card == false && mouseX>xNextOpen && mouseX<xNextOpen+widthNextOpen && mouseY>yNextOpen && mouseY<yNextOpen+heightCardMain){
    card = true;
  }
}
