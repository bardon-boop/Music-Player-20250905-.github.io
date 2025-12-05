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
String songTitle = "Gold Digger";
String songArtist = "Kanye West";
String description = "6767676767676767676767676767676767676767676767676767676767676767"
//
rect(stringLocX, stringLocY, stringLocW, stringLocH);
//
text(songTitle,stringLocX, stringLocY, stringLocW, stringLocH);
//Enter all text from case studies
