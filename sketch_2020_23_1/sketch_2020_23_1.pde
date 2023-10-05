//Global Variables
boolean next=false;
Boolean brightnessControl=false; //Note: ARROWS
Boolean nightmode=false; //Note: clock and turn on automatically
PImage rectQuit; 
PImage Clame;
PFont titleFont, footerFont;
color resetDefaultInk=#000000, black = #000000;
float xTitle, yTitle, widthTitle, heightTitle ;
float xFooter, yFooter, widthFooter, heightFooter;
float xRectQuit, yRectQuit, widthRectQuit, heightRectQuit;
float xClame, yClame, widthClame, heightClame;
float xNext, yNext, withNext, heightNext;
//float ;
int appWidth, appHeight;
int sizeFont, size; //Text Variables
int brightnessNumber=255; //Range:1-255
//int next;
void setup() {
  //Print & Println
  println("Hello World");
  println("Width:"+width, "\t", "Height:"+height);
  println("Display Width: "+displayWidth, "\tDisplay Height: "+displayHeight);
  //Character Escapes, tab, new
  //
  fullScreen();
  //size(800, 600);
  appWidth = width;
  appHeight = height;
  //
  //Population
  xTitle = appWidth*1/4;
  yTitle = appHeight*1/8;
  widthTitle = appWidth*1/2;
  heightTitle= appHeight*1/10;
  //
  xFooter = appWidth*1/4;
  yFooter = appHeight*1/4;
  widthFooter = appWidth*1/2;
  heightFooter = appHeight*1/10;
  //
  xRectQuit = appWidth*18/20-1;
  yRectQuit = appHeight*0/20;
  widthRectQuit = appWidth*1/10;
  heightRectQuit = appHeight*1/10;
  rectQuit = loadImage("../hello/exet.png");
  //
  xClame = appWidth*3/8;
  yClame = appHeight*3/4;
  widthClame = appWidth*1/4;
  heightClame = appHeight*1/10;
  Clame = loadImage("../hello/next.png");
  //
  // DIVs or rect()
  // Layout our text space and typographical features
  rect( xTitle, yTitle, widthTitle, heightTitle );
  rect(xFooter, yFooter, widthFooter, heightFooter);
  rect(xRectQuit, yRectQuit, widthRectQuit, heightRectQuit);
  rect(xClame, yClame, widthClame, heightClame);
  //rect(); //Image, foreground, near the top
  //rect(); //Copy and Paste this for all rect()s
  //
  // Text Setup
  // Fonts from OS (Operating System)
  //String[] fontList = PFont.list(); //Lists all fonts available on OS
  //printArray(fontList);
  //[fontName] = createFont("[fontSpelling]", [startingFontSize]);
  //Verify the font exists in Processing.Java
  // Tools / Create Font / Find Font / Do not press "OK", known bug
  //
  // Text Setup
  // Fonts from OS (Operating System)
  //String[] fontList = PFont.list(); //Lists all fonts available on OS
  //printArray(fontList);
  titleFont = createFont("ArialMT", 1);
  footerFont = createFont("ArialMT", 1); //Verify the font exists in Processing.Java
  // Tools / Create Font / Find Font / Do not press "OK", known bug
  //
} //End setup
//
void draw() {
  if ( brightnessControl==true ) tint (255, brightnessNumber); //Gray Scale: 1/2 tint (i.e 128/256=1/2)
  //if ( nightmode==true ) tint ( 64, 64, 40 ); //Gray Scale: 1/2 tint (i.e 128/256=1/2)
  if ( nightmode==true ) {
    tint ( 64, 64, 40 );
    println(nightmode);
  } else {
    noTint(); //See Processing DOC
    println(nightmode);
  }
  //
  //Drawing Text, copied for each line of text
  //fill( [colourName] ); //ink
  textAlign( CENTER, CENTER );
  fill(black); //ink
  textAlign(CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ];
  size = 40;
  textFont(titleFont, size);
  text (xTitle, yTitle, widthTitle, heightTitle );
  fill(black); //ink
  textAlign(CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  size = 40;
  textFont(footerFont, size);
  text ( xFooter, yFooter, widthFooter, heightFooter );
  fill(resetDefaultInk); //ink
  //
  //
  //rect(  ); //Title:
  //rect(   ); //Footer:
  image (rectQuit, xRectQuit, yRectQuit, widthRectQuit, heightRectQuit );
  image (Clame, xClame, yClame, widthClame, heightClame);
} //End draw
//
void keyPressed() {  
  if ( key=='n' || key=='N' ) { //Nightmode, basic control is Boolean
    if ( nightmode==true ) {
      nightmode = false;
    } else {
      nightmode = true;
    }
  }
//
}
//End keyPressed
//
void mousePressed() {
  //When mouse is pressed
  println("Mouse X: ", mouseX, "Mouse Y: ", mouseY);
  //
  if ( mouseX>xRectQuit && mouseX<xRectQuit+widthRectQuit && mouseY>yRectQuit && mouseY<yRectQuit+heightRectQuit ) exit();
  if (key==ENTER || mouseX>xClame && mouseX<xClame+widthClame && mouseY>yClame && mouseY<yClame+heightClame);{
   println("claimed");
  }
} //End mousePressed
//
//End MAIN Program
