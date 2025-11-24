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
float imageRectWidth = screenWidth * 5/18;
float imageRectHeight = screenWidth * 5/18;
//
//Image Aspect Ratio Vars & Algorithm
//Directory or Pathway
String upArrow = "../../";
String rainbowFolder = "Picture Dependancy Folder/Images/";
String rainbow = "Rainbow";
String rainbowFileExtJPG = ".jpg";
String imagePathwayR = upArrow + rainbowFolder + rainbow + rainbowFileExtJPG;
//println("Rainbow Pathway: " + imagePathwayR);
//Image Loading & Aspect Ratio
PImage imageR = loadImage(imagePathwayR);
int imageWidthR = 626; //Hardcoded
int imageHeightR = 351; //Hardcoded
//Aspect Ratio
float imageRAspectRatio_LessOne = ( imageWidthR >= imageHeightR ) ? imageHeightR/imageWidthR : imageWidthR/imageHeightR ; //Ternary Operator
// Hard CodedLesser-Than-One Aspect Ratio
println(imageRAspectRatio_LessOne);
//DIV
rect(imageRectX, imageRectY, imageRectWidth, imageRectHeight);
//
image( imageR, imageRectX, imageRectY, imageRectWidth, imageRectHeight);
//image( imageR, imageRectX, imageRectY, imageWidthAdapt, imageHeightAdapt);
