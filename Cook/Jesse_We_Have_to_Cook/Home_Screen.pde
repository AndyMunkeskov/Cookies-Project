int backgroundX, backgroundY, backgroundWidth, backgroundHeight;
int tintDayMode=200, tintDayModeOpacity=50;
int tintRed=64, tintGreen=64, tintBlue=0, tintNightModeOpcacity=85; //Blue should be zero
float rectX, rectY, rectWidth, rectHeight;
float quitX, quitY, quitWidth, quitHeight;
//
void homeScreen () {
  println("You've Encountered A Wild Homescreen!"); //Testing for Splash Screen Start Button
  //
  //rect(quitX, quitY, quitWidth, quitHeight );
  if ( mouseX>=quitX && mouseX<=quitX+quitWidth && mouseY>=quitY && mouseY<=quitY+quitHeight ) { //QuitButton Hoverover
  //Cookie, aspect ratio
  fill(white); 
  rect( quitX, quitY, quitWidth, quitHeight );
  noFill();
} else {
    quitButtonText();
  }
  quitButtonText();
  /* Home Screen Expectations
  
   -Quit button and reset button (splash screen start button)
   -I each: image, text, 2d shape, button
   -Narrative through the 9 rectangles
   -See case study
   -Note: must have on image with aspect ratio
   */
  //
}//End homeScreen
//
void backgroundWhiteScreen() {
  fill(white);
  noStroke();
  rect( backgroundX, backgroundY, backgroundWidth, backgroundHeight );
  strokeWeight(1); //Reset to 1 pixel
  fill(white); //Reset to white
}//End backgroundWhiteScreen()
//
void BackgroundImage() {
  backgroundWhiteScreen();
  //tint( tintDayMode, tintDayModeOpacity ); //Day Mode, see ternary operator
  if ( nightMode==false ) tint( tintRed, tintGreen, tintBlue, tintNightModeOpcacity ); //Night Mode, see ternary operator
  if ( nightMode==true ) image( backGroundImage, backgroundX, backgroundY, backgroundWidth, backgroundHeight );
  image( backGroundImage, backgroundX, backgroundY, backgroundWidth, backgroundHeight );
}//End BackgroundImage
//End Home Screen Subprogram
