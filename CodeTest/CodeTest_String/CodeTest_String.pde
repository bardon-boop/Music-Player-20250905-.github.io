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
float stringLocX = screenWidth * 1/8;
float stringLocY = screenHeight * 1/8;
float stringLocW = screenWidth * 5/18;
float stringLocH = screenHeight * 1/13; // reg 5/18
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
float trebuchetAR = TfontSize / stringLocH;
println(trebuchetAR);
fontSize = stringLocH * trebuchetAR;
//Tools / Create Font / Find Font / Do Not Press "OK"

rect(stringLocX, stringLocY, stringLocW, stringLocH);
//
color redInk = #F52828; //Hexidecimal
color whiteInk = #FFFFFF;
color clearInk = whiteInk;
fill(redInk);
textAlign(CENTER, CENTER); //Function defines the point in which text is drawn from on both the x and y axis
textFont(sTitleFont, fontSize);
text(songTitle, stringLocX, stringLocY, stringLocW, stringLocH);
fill(clearInk);
//Enter all text from case studies
