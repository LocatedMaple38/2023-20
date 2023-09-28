//Global Variables
String title ="WAHOO!!", footer ="drip";
PFont titleFont, footerFont;
color resetDefaultInk=#123456, black = #000000;
float xTitle, yTitle, widthTitle, heightTitle ;
float xFooter, yFooter, widthFooter, heightFooter;
float xRectQuit, yRectQuit, widthRectQuit, heightRectQuit;
float xClame, yClame, widthClame, heightClame;
//float ;
int appWidth, appHeight;
//String titleFont = "hello", footerFont = "no" ; //All text variables as name=value pairs
//PFont ; //All fonts used
//color ; //colour palette & inks
int sizeFont, size; //Text Variables
//
//
void setup() {
  //Print & Println
  println("Hello World");
  println("Width:"+width, "\t", "Height:"+height);
  println("Display Width: "+displayWidth, "\tDisplay Height: "+displayHeight);
  //Character Escapes, tab, new
  //
  //fullScreen();
  size(1000, 800);
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
  //
  xClame = appWidth*3/8;
  yClame = appHeight*3/4;
  widthClame = appWidth*1/4;
  heightClame = appHeight*1/10;
  //
  // DIVs or rect()
  // Layout our text space and typographical features
  rect( xTitle, yTitle, widthTitle, heightTitle );
  rect(xFooter, yFooter, widthFooter, heightFooter);
  fill(255, 0, 0);
  rect(xRectQuit, yRectQuit, widthRectQuit, heightRectQuit);
  fill(0, 255, 0);
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
  titleFont = createFont("ArialMT", 55);
  footerFont = createFont("ArialMT", 55); //Verify the font exists in Processing.Java
  // Tools / Create Font / Find Font / Do not press "OK", known bug
  //
} //End setup
//
void draw() {
  //Drawing Text, copied for each line of text
  //fill( [colourName] ); //ink
  textAlign( CENTER, CENTER ); //Align X&Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ];
  //size = [pixelNumberFontSize]; //integer number
  //textFont( [fontVariable], size ); // states which font to use
  //text ( [textStringName], [four rect() variables copied from DIVs]);
  //
   //Text is same size or relative to rect()
  //
  //Drawing Font Code
  //
  fill(black); //ink
  textAlign(CENTER, TOP); //Align X&Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ];
  size = 60;
  textFont(titleFont, size);
  text (xTitle, yTitle, widthTitle, heightTitle );
  fill(black); //ink
  textAlign(CENTER, TOP); //Align X&Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  size = 120;
  textFont(footerFont, size);
  text ( xFooter, yFooter, widthFooter, heightFooter );
  fill(resetDefaultInk); //ink
  //
  //
  //rect(  ); //Title: 
  //rect(   ); //Footer: 
} //End draw
//
void keyPressed() {
} //End keyPressed
//
void mousePressed() {
  //When mouse is pressed
  println("Mouse X: ", mouseX, "Mouse Y: ", mouseY);
  //
  if ( mouseX>xRectQuit && mouseX<xRectQuit+widthRectQuit && mouseY>yRectQuit && mouseY<yRectQuit+heightRectQuit ) exit();
  if ( mouseX>xClame && mouseX<xClame+widthClame && mouseY>yClame && mouseY<yClame+heightClame) println("clamed");
} //End mousePressed
//
//End MAIN Program
