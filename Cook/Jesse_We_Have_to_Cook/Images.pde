PImage backGroundImage, quitButtonImage;
//
void imagePopulation() {
  backGroundImage = loadImage ("Images/Tf2 Image for Website Thingy.jpg");
  quitButtonImage = loadImage( "Images/Half Life 3 Confirmed.jpg");
}//End imagePopulation
//
void imageNightMode() {
  //if ( nightMode==false ) tint( tintDayMode, tintDayModeOpacity ); //Day Mode, see ternary operator
  //if ( nightMode==true ) tint( tintRed, tintGreen, tintBlue, tintNightModeOpcacity ); //Night Mode, see ternary operator
//
if () {
   tint( tintRed, tintGreen, tintBlue, tintNightModeOpcacity );
  }else{
   tint( tintDayMode, tintDayModeOpacity );
}
}//End Image Night Mode
void quitButtonImage() {
  quitButtonImage = backGroundImage;
  rect(quitButtonImageRectX, quitButtonImageRectY, quitButtonImageRectWidth, quitButtonImageRectHeight);
  imageNightMode()
  image( quitButtonImage, quitButtonImageRectX, quitButtonImageRectY, quitButtonImageRectWidth, quitButtonImageRectHeight );
  //Aspect Ratio
  float quitButtonImageWidth=460 , quitButtonImageHeight=215;
  float quitButtonImageWidthAdjusted=0.0, quitButtonImageHeight_Adjusted=0.0;
  float quitButtonImageWidthCalculated=0.0, quitButtonImageHeight_Calculated=0.0;
  float largerDimension=0.0, smallerDimension=0.0;
  float imageWidthRatio=0.0, imageHeightRatio=0.0;
  //
  if ( quitButtonImageWidth >= quitButtonImageHeight) {//Image's largest dimension, Landscape or Portrait
    largerDimension = quitButtonImageWidth;
    imageWidthRatio = quitButtonImageHeight;
      //
      quitButtonImageWidthAdjusted = quitButtonImageRectWidth;
      imageHeightRatio = smallerDimension / largerDimension; //value<1, main point of algorithm
      quitButtonImageHeight_Calculated = quitButtonImageWidthAdjusted * imageHeightRatio;
      //Debugging: x-value must be centered
      float centerX=appWidth*1/2;
      quitButtonImageRectX = centerX - quitButtonImageWidthAdjusted * 1/2;
     imageNightMode()
     image( quitButtonImage, quitButtonImageRectX, quitButtonImageRectY, quitButtonImageWidthAdjusted, quitButtonImageHeight_Calculated);
      //  
   } else { //Portrait
    largerDimension = quitButtonImageHeight;
    smallerDimension = quitButtonImageWidth;
    //
    quitButtonImageHeight_Adjusted = quitButtonImageRectHeight; //Uses builtin compression algorithm
    imageHeightRatio = smallerDimension / largerDimension; //value<1, main point of algorithm
    quitButtonImageWidthCalculated = quitButtonImageHeight_Adjusted * imageHeightRatio;
    //Debugging: the x-value must be centered
    float centerX=appWidth*1/2;
    quitButtonImageRectX = centerX - quitButtonImageWidthCalculated * 1/2;
    imageNightMode()
    image( quitButtonImage, quitButtonImageRectX, quitButtonImageRectY, quitButtonImageWidthCalculated, quitButtonImageHeight_Adjusted);
    //
  }
   //
   //No Aspect Ratio
   imageNightMode()
   image( quitButtonImage, quitButtonImageRectX, quitButtonImageRectY, quitButtonImageRectWidth, quitButtonImageRectHeight);
   //
}//End QuitButtonImage
// 
void quitButtonHoverOver () {
if ( mouseX>=quitX && mouseX<=quitX+quitWidth && mouseY>=quitY && mouseY<=quitY+quitHeight ) { //QuitButton Hoverover
    fill(white);
    noStroke();
    float centerX=appWidth*1/2; 
    float quitWidth_WhiteScreen = centerX - appWidth * 1/15;
    rect( quitX, quitY, quitWidth_WhiteScreen, quitHeight );
    strokeWeight(1); //Reset: 1 pixel
    noFill();
    quitButtonImage(); //Cookie, aspect ratio
  /*
  fill(white); 
  rect( quitX, quitY, quitWidth, quitHeight );
  noFill();
  */
} else {
    fill(white);
    noStroke();
    float centerX=appWidth*1/2; 
    float quitWidth_WhiteScreen = centerX - appWidth * 1/15;
    rect( quitX, quitY, quitWidth_WhiteScreen, quitHeight );
    strokeWeight(1); //Reset to 1 pixel
    noFill(); //Reset to white
    quitButtonText();
}//End quitButtonHoverOver
//End images Subprogram
