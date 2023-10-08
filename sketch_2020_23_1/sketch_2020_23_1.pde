color resetDefaultInk=#000000, black = #000000;
boolean next=false;
Boolean brightnessControl=false; //Note: ARROWS
Boolean nightmode=false; //Note: clock and turn on automatically
PImage rectQuit; 
PImage Clame;
PFont titleFont, footerFont;
float xTitle, yTitle, widthTitle, heightTitle ;
float xFooter, yFooter, widthFooter, heightFooter;
float xRectQuit, yRectQuit, widthRectQuit, heightRectQuit;
float xClame, yClame, widthClame, heightClame;
float xNext, yNext, withNext, heightNext;
float xNightMode, yNightMode, withNightMode, hightNightMode;
int appWidth, appHeight;
int NightMode;
int sizeFont, size; //Text Variables
int brightnessNumber=255; //Range:1-255
void setup() {
  int hourNightMode = hour(); //24-hour clock
  println(hourNightMode);
  if ( hourNightMode>12 ) {
    nightmode=true;
  } else if ( hourNightMode<05 ) {
    nightmode=true;
  } else {
    nightmode=false;
  }
  println("Hello World");
  println("Width:"+width, "\t", "Height:"+height);
  println("Display Width: "+displayWidth, "\tDisplay Height: "+displayHeight);
  //fullScreen();
  size(500, 500);
  appWidth = width;
  appHeight = height;
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
  rectQuit = loadImage("../hello/exet.png");
  xClame = appWidth*3/8;
  yClame = appHeight*3/4;
  widthClame = appWidth*1/4;
  heightClame = appHeight*1/10;
  Clame = loadImage("../hello/next.png");
  xNightMode = appWidth*0;
  yNightMode = appHeight*0;
  withNightMode = appWidth*1/25;
  hightNightMode = appHeight*1/25;
  rect( xTitle, yTitle, widthTitle, heightTitle );
  rect(xFooter, yFooter, widthFooter, heightFooter);
  rect(xRectQuit, yRectQuit, widthRectQuit, heightRectQuit);
  rect(xClame, yClame, widthClame, heightClame);
  rect(xNightMode, yNightMode, withNightMode, hightNightMode);
  titleFont = createFont("ArialMT", 1);
  footerFont = createFont("ArialMT", 1); //Verify the font exists in Processing.Java
} //End setup
void draw() {
  if ( brightnessControl==true ) tint (255, brightnessNumber); //Gray Scale: 1/2 tint (i.e 128/256=1/2)
  if ( nightmode==true ) {
    tint ( 64, 64, 40 );
    println(nightmode);
  } else {
    noTint(); //See Processing DOC
    println(nightmode);
  }
  textAlign( CENTER, CENTER );
  fill(black); //ink
  textAlign(CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  size = 40;
  textFont(titleFont, size);
  text (xTitle, yTitle, widthTitle, heightTitle );
  fill(black); //ink
  textAlign(CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  size = 40;
  textFont(footerFont, size);
  text ( xFooter, yFooter, widthFooter, heightFooter );
  fill(resetDefaultInk); //ink
  image (rectQuit, xRectQuit, yRectQuit, widthRectQuit, heightRectQuit );
  image (Clame, xClame, yClame, widthClame, heightClame);
} //End draw
//
void keyPressed() {
   if (keyCode==UP || keyCode==DOWN ) { //Brightness keybind
    brightnessControl = true;
    if(keyCode==UP ) brightnessNumber++ ; //brightnessNumber+=1 //brightnessNumber = brightnessNumber+1
    if (keyCode==DOWN ) brightnessNumber-- ; //brightnessNumber-=1
    //CONTINUE HERE with brightness toggles
    println(brightnessNumber);
  }
}
void mousePressed() {
  println("Mouse X: ", mouseX, "Mouse Y: ", mouseY);
  if ( mouseX>xRectQuit && mouseX<xRectQuit+widthRectQuit && mouseY>yRectQuit && mouseY<yRectQuit+heightRectQuit ) exit();
  if (key==ENTER || mouseX>xClame && mouseX<xClame+widthClame && mouseY>yClame && mouseY<yClame+heightClame);{
  println("claimed");
  }
  if (mouseX>xNightMode && mouseX<xNightMode+withNightMode && mouseY>yNightMode && mouseY<yNightMode+hightNightMode );{ //Nightmode, basic control is Boolean
    if ( nightmode==true ) {
      nightmode = false;
    } else {
      nightmode = true;
    }
  }
}
