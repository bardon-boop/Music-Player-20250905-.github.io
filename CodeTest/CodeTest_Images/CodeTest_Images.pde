/* Aspect Ratio: Bike only Demonstration
 - Rainbow
 */
//
//Display
fullScreen(); //Landscape
//size(500, 750); //Portrait
int screenWidth = displayWidth; //width
int screenHeight = displayHeight; //height
println("Display VARS:", "\tscreenWidth:" + screenWidth, "screenHeight:" + screenHeight, "\n\t\tFullscreen, displayWidth:" + displayWidth, "displayHeight:" + displayHeight, "\n\t\tsize, width:" + width, "height:" + height);
//
//Population
float imageRectX = screenWidth * 1/8;
float imageRectY = screenHeight * 1/8;
float imageRectWidth = screenWidth * 5/18; //5/18
float imageRectHeight = screenWidth * 5/18; //** Make smaller to test Landscape
//
//Image Aspect Ratio Vars & Algorithm
//Directory or Pathway, Concatenation
String upArrow = "../../";
String rainbowFolder = "Picture Dependancy Folder/Images/";
String rainbow = "Rainbow";
String rainbowFileExtJPG = ".jpg";
String imagePathwayR = upArrow + rainbowFolder + rainbow + rainbowFileExtJPG;
//println("Rainbow Pathway: " + imagePathwayR);
//Image Loading & Aspect Ratio
PImage errorMessage = loadImage("errorImage.png");
PImage imageR = loadImage(imagePathwayR);
if (imageR == null) {
  println("Null Pointer Exception ... Program failed to operate due to invalid pathway ... Resolve issue immediately");
  imageR = errorMessage;
}
int imageWidthR = 626; //Hardcoded
int imageHeightR = 351; //Hardcoded 351
//Aspect Ratio
float imageRAspectRatio_LesserOne = ( imageWidthR >= imageHeightR ) ? float(imageHeightR)/float(imageWidthR) : float(imageHeightR)/float(imageWidthR) ; //Ternary Operator
// Hard Coded Lesser-Than-One Aspect Ratio
//How to make imgae bigger or smaller
//ERROR: truncating, casting
println("Aspect Ratio <1", imageRAspectRatio_LesserOne, "Testing for decimals, formula", float(imageHeightR)/float(imageWidthR));
//Algorithm Decisions (choice)
//Aspect Ratio
/*
imageRectHeight
 imageRectWidth
 imageWidthR
 imageHeightR
 if () {
 } else {
 } //end IF Aspect Ratio
 */
float imageWidthAdapt = imageRectWidth;
float imageHeightAdapt = ( imageWidthR >= imageRectWidth ) ? imageWidthAdapt * imageRAspectRatio_LesserOne : imageWidthAdapt / imageRAspectRatio_LesserOne ; //Ternary Operator
if (imageHeightAdapt>imageRectHeight) {
  println("Image does not fit within the parameters of the division frame, Program end ... Issue must be resolved... Image failed to appear");
  int timesRan = 0; //Local Variable to IF-Statement
  //** WHILE Loops can run indefinitely with an error if not controlled, ensure that as a while loop is performed, it approaches the satisfacation of its condition
  while ( imageHeightAdapt>imageRectHeight ) {
    println("Iterations of divsion correction program:", timesRan++);
    if ( timesRan < 10000 ) {
      // Checking Image Size
    } else {
      //ERROR: Infinite Loop
      println("WHILE condition is not being satisfied, resolve image correction program");
      exit(); //doesn't work, must force WHILE Stop
      imageHeightAdapt = imageRectHeight;
    } //End Check Infinite Loop
    imageWidthAdapt *= 0.81; // -= 1;
    imageHeightAdapt = imageWidthAdapt * imageRAspectRatio_LesserOne;
    println("Image size % decrease recorded:", imageWidthAdapt, imageHeightAdapt, imageHeightR);
  }
  if (imageRectHeight < imageRectWidth) {
  imageHeightAdapt += imageRectHeight - imageHeightAdapt;
  } else {
    imageWidthAdapt += imageRectWidth - imageWidthAdapt;
  }
}
//Ternary Operator for Centering an Image With Aspect Ratio
float centerAdjustment = (imageWidthAdapt > imageHeightAdapt) ? float(1)/float(2) * (imageRectHeight-imageHeightAdapt) : float(1)/float(2) * (imageRectWidth-imageWidthAdapt);
println("Centre Factor, " + centerAdjustment); // VAR Check
//
//DIV
rect(imageRectX, imageRectY, imageRectWidth, imageRectHeight);
//
//image( imageR, imageRectX, imageRectY, imageRectWidth, imageRectHeight);
if (imageWidthAdapt > imageHeightAdapt) {
  image( imageR, imageRectX, imageRectY + centerAdjustment, imageWidthAdapt, imageHeightAdapt); //For centring on the y-axis
} else {
  image( imageR, imageRectX  + centerAdjustment, imageRectY, imageWidthAdapt, imageHeightAdapt); //For centring on the x-axis
}
