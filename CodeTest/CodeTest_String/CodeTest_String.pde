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
float stringLocH = screenWidth * 1/12; // reg 5/18
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
int fontSize = 32;
PFont sTitleFont;
String trebuchetMS = "Trebuchet MS";
sTitleFont = createFont(trebuchetMS, fontSize);
//Tools / Create Font / Find Font / Do Not Press "OK"
rect(stringLocX, stringLocY, stringLocW, stringLocH);
//
color redInk = #F52828; //Hexidecimal
fill(redInk);
textFont(sTitleFont, fontSize);
text(songTitle, stringLocX, stringLocY, stringLocW, stringLocH);
//Enter all text from case studies
