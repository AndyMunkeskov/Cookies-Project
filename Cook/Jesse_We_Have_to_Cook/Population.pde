void population() {
  float centerX=appWidth*1/2, centerY=appHeight*1/2;
  startWidth = appWidth*1/2;
  startHeight = appHeight*1/10;
  startX = centerX - startWidth*1/2;
  startY = centerY - startHeight*1/2;
  //
  backgroundX = appWidth;
  backgroundY = appHeight;
  backgroundWidth = appWidth;
  backgroundHeight = appHeight;
  //
  quitWidth = appWidth * 1/3 ;
  quitHeight = appHeight * 1/10 ;
  quitX = appWidth * 1/3 ;
  quitY = appHeight * 1/3;
  //
  quitButtonImageRectWidth = quitWidth;
  quitButtonImageRectHeight = quitHeight; 
  quitButtonImageRectX = quitX; //Will need to be fixed later
  quitButtonImageRectY = quitY;
  //
  startWidth = appWidth * 1/3 ;
  startHeight = appHeight * 1/10 ;
  startX = centerX - quitWidth * 1/2 ;
  startY = centerY - 4*quitHeight;
  //
  rectX = appWidth * 1/3;
  rectY = appHeight * 1/3;
  rectWidth = appWidth * 1/3;
  rectHeight = appHeight * 1/3;
  
}//End population
//
//End population Subprogram
