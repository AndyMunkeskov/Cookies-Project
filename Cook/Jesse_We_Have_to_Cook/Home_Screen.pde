int backgroundX, backgroundY, backgroundWidth, backgroundHeight;
int tintDayMode=200, tintDayModeOpacity=50;
int tintRed=64, tintGreen=64, tintBlue=0, tintNightModeOpcacity=85; //Blue should be zero
float rectX, rectY, rectWidth, rectHeight;
float quitX, quitY, quitWidth, quitHeight;
float quitButtonImageRectX, quitButtonImageRectY, quitButtonImageRectWidth, quitButtonImageRectHeight;
//
void homeScreen () {
  println("You've Encountered A Wild Homescreen!"); //Testing for Splash Screen Start Button
  //
  //rect(quitX, quitY, quitWidth, quitHeight );
  quitButtonHoverOver();
}    
//
  void backgroundWhiteScreen() {
    fill(white);
    noStroke();
    rect( backgroundX, backgroundY, backgroundWidth, backgroundHeight );
    strokeWeight(1); //Reset to 1 pixel
    noFill(); //Reset to white
}//End backgroundWhiteScreen()
  //
  void BackgroundImage() {
   backgroundWhiteScreen();
    imageNightMode();
   image( backGroundImage, backgroundX, backgroundY, backgroundWidth, backgroundHeight );
  }//End BackgroundImage
  //
//End Home Screen Subprogram
