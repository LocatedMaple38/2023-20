void card(){
  fill(255);
  rect(xTitle, yTitle, widthTitle, heightTitle );
  rect(xFooter, yFooter, widthFooter, heightFooter); 
  rect(xRectQuit, yRectQuit, widthRectQuit, heightRectQuit); 
  rect(xClame, yClame, widthClame, heightClame);
  rect(xNightMode, yNightMode, withNightMode, hightNightMode);
  
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
  text (xFooter, yFooter, widthFooter, heightFooter );
  
  image(rectQuit, xRectQuit, yRectQuit, widthRectQuit, heightRectQuit);
  image(Clame, xClame, yClame, widthClame, heightClame);
  //image(DidYouKnow, xDidYouKnow, yDidYouKnow, withDidYouKnow, hightDidYouKnow);
}
