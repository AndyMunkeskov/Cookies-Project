//Global Variables
int appWidth, appHeight, smallerDimension, largerDimension;
Boolean OS_on=false;
/* Nigh Mode Comment
 Purple not for Night Mode, full BLUE
 resetDefaultInk is WHITE, not Night Mode Friendly, full Blue
*/
color purple=#7D05FF, resetDefaultInk=#FFFFFF;
//
void setup() {
  size(600, 4000);
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

}
//
void draw() {
  //Assignment 2: OS Level Mouse Click and Splash Screen
  if ( OS_on==true ) splashScreen; //OS Level Mouse Click
}
//
void keyPressed() {}
//
void mousePressed() {
  //OS Level Mouse Click
  if ( OS_on==false ) OS_on=true;//End OS Level Mouse Click
  
}
