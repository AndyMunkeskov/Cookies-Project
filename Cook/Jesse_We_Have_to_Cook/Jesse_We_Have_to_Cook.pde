//Global Variables
int appWidth, appHeight, smallerDimension, largerDimension;
Boolean OS_on=false, splashScreenStart=false;
boolean nightMode=false;
color purple=#7D05FF, resetDefaultInk=#000000, white=#FFFFFF;
int centerX, centerY;
//
void setup() {
  size(1920, 1080);
  //fullscreen(); //displayWidth //displayHeight
  appWidth = width;
  appHeight = height;
  println("\t\t\tWidth="+width, "\tHeight ="+height);
  println("Display monitor:", "\twidth:"+displayWidth, "\theight:"+displayHeight);
  //
  String ls="Landscape or Square", p="portrait", DO="display orientation", instruct="turn your phone or it no workie :(";
  //
  if ( appWidth < appHeight ) { // Declaring Landscape and square
    println(instruct);
  } else {
    println("Display: Good to Go");
    if ( appWidth > displayWidth ) { //Fitting CANVAS into Monitor Display
      appWidth=0;
      appHeight=0;
      println("STOP, is broken! ;(");
      if ( appWidth==0 || appHeight==0 ) exit();
      if ( appWidth!=0 && appHeight!=0 ) println("Display: Good to Go");
    } else {
      //Empty ELSE
    }
  }
  println("Smaller Dimension is", smallerDimension, "Larger Dimension is", largerDimension);
  population();
  textSetup();
  imagePopulation();
}//End Setup
void draw() {
  if ( OS_on==true && splashScreenStart==false ) splashScreen(); //OS Level Mouse Click
  if ( splashScreenStart==true ) homeScreen();
//
  fill(white);
  rect(rectX, rectY, rectWidth, rectHeight );
  fill(white);
  rect( centerX, centerY, rectWidth, rectHeight );
  rect(appWidth * 2/3, appHeight * 2/3, rectWidth, rectHeight);
  rect(appWidth, appHeight, rectWidth, rectHeight);
}
//
void keyPressed() {
  if ( OS_on==true && key==' ' ) {
    splashScreenStart = true;
    BackgroundImage();
  }//
  //Key Board Shortcuts
  if ( key==CODED && keyCode==ESC ) exit();
  if ( key=='Q' || key=='q') exit();
  if ( key=='N' || key=='n') {
    if ( nightMode==true ) { 
      nightMode=false;
      BackgroundImage();
    } else { 
      nightMode=true; 
      BackgroundImage();
    }
  }
  //
}//End KeyPressed
//
void mousePressed() {
  //OS Level Mouse Click
  if ( OS_on==false ) OS_on=true;//End OS Level Mouse Click
  if ( splashScreenStart = true && mouseX>=quitX && mouseX<=quitX+quitWidth && mouseY>=quitY && mouseY<=quitY+quitHeight ) exit();
}
