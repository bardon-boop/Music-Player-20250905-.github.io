/* Strings
 */
//
//Display
fullScreen(); //Landscape
//size(500, 750); //Portrait
int screenWidth = displayWidth; //width
int screenHeight = displayHeight; //height
println("Display VARS:", "\tscreenWidth:" + screenWidth, "screenHeight:" + screenHeight, "\n\t\tFullscreen, displayWidth:" + displayWidth, "displayHeight:" + displayHeight, "\n\t\tsize, width:" + width, "height:" + height);
//
//Population for division floats
float[] stringLocX = new float[3];
stringLocX[0] = screenWidth * 1/8;
stringLocX[1] = screenWidth * 1/8;
stringLocX[2] = screenWidth * 1/8;
float[] stringLocY = new float[3];
stringLocY[0] = screenHeight * 1/8;
stringLocY[1] = screenHeight * 3/8;
stringLocY[2] = screenHeight * 5/8;
float[] stringLocW = new float[3];
stringLocW[0] = screenWidth * 5/18;
stringLocW[1] = screenWidth * 1/9;
stringLocW[2] = screenWidth * 7/18;
float[] stringLocH = new float[3];
stringLocH[0] = screenHeight * 1/13;
stringLocH[1] = screenHeight * 1/13;
stringLocH[2] = screenHeight * 1/13;
//
//Strings Vars
String songTitle = "Song Name";
String songArtist = "Artist Name";
String description = "6767676767676767676767676767676767676767676767676767676767676767";
//
/*Fonts from OS
 println("Start of Console"); //ERROR: In case CONSOLE Memory not enough
 String[] fontOptions = PFont.list(); // List of all fonts on system
 printArray(fontOptions); //Lists all the available font options
 */
float fontSize = screenHeight;
float TfontSize = 64.0;
PFont sTitleFont;
String trebuchetMS = "Trebuchet MS";
sTitleFont = createFont(trebuchetMS, fontSize);
//
//println(sTitleFont);
//fontSize = 64;
/* Aspect Ratio Manipulations (changes to variables)
 -choose Aspect Ratio that must be multiplied: fontSize/titleHeight
 -Rewriting fontSize with formula
 */
float trebuchetAR = TfontSize / stringLocH[0];
println(trebuchetAR);
//Tools / Create Font / Find Font / Do Not Press "OK"


//
color redInk = #F52828; //Hexidecimal
color whiteInk = #FFFFFF;
color clearInk = whiteInk;
textAlign(CENTER, TOP); //Function defines the point in which text is drawn from on both the x and y axis
//
//
//ERROR Check fontSize, decreasing the text when wrapped or not shown
float textWidthDecrease = 0.97; //3% derease
for ( int i = 0 ; i <= 2 ; i++ ) {
  fontSize = stringLocH[0] * trebuchetAR;
  textFont(sTitleFont, fontSize);
  while ( textWidth(songTitle) > stringLocW[i]) {
    //ERROR: Possible infinite loop if while loop condition cannot be satisfied
    fontSize *= textWidthDecrease;
    textFont(sTitleFont, fontSize);
  } //End While error check text-wrap
  fill(clearInk);
  rect(stringLocX[i], stringLocY[i], stringLocW[i], stringLocH[i]);
  fill(redInk);
  text(songTitle, stringLocX[i], stringLocY[i], stringLocW[i], stringLocH[i]);
  //println(stringLocX[i], stringLocY[i], stringLocW[i], stringLocH[i]); //Checking each box's parameters
} //End FOR Loop, Font Size Check in DIVs
//Enter all text from case studies
