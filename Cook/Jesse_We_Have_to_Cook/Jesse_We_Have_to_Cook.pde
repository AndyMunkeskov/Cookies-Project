//Global Variables
int appWidth, appHeight, smallerDimension, largerDimension;
//
void setup() {
  size(600, 400);
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
    } else {
      //Empty ELSE
    }
 }
  println("Smaller Dimension is", smallerDimension, "Larger Dimension is", largerDimension);
}
//
void draw() {}
//
void keyPressed() {}
//
void mousePressed() {}
