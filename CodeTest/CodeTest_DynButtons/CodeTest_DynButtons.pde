// Buttons
//
// Parameters Initiation
int screenWidth;
int screenHeight;
float rectX, rectY, rectW, rectH;
float playButtonX13, playButtonX2, playButtonY1, playButtonY2, playButtonY3;
//Colours Initiation
color BG, clear; //Black, White and BG are Greyscale
color playButtonBox, playButtonTri, playButtonBoxH, playButtonTriH;
boolean mouseHoveredPB;
void setup() {
  size(1000, 700);
  screenWidth = width;
  screenHeight = height;
  rectX = screenWidth * 1/2 - screenWidth * 1/20;
  rectY = screenHeight * 1/2 - screenHeight * 1/20;
  rectH = screenHeight * 1/10;
  rectW = screenWidth * 1/10;
  playButtonX13 = rectX + rectW * 1/4;
  playButtonX2 = rectX + rectW * 3/4;
  playButtonY1 = rectY + rectH * 1/4;
  playButtonY2 = rectY + rectH * 1/2;
  playButtonY3 = rectY + rectH * 3/4;
  rect(rectX, rectY, rectW, rectH);
  triangle(playButtonX13, playButtonY1, playButtonX2, playButtonY2, playButtonX13, playButtonY3);
  //Colour Declaration and Population
  color black = #000000;
  color white = #FFFFFF;
  color red = #E30302;
  color mDarkRed = #BF2323;
  color darkRed = #981A1A;
  BG = #B9B9B9;
  playButtonBox = red;
  playButtonTri = mDarkRed;
  playButtonBoxH = darkRed;
  playButtonTriH = red;
  clear = white;
}
//
void draw() {
  background(BG);
  //println(mouseX, mouseY);
  if (rectX < mouseX && mouseX < rectX + rectW && rectY < mouseY && mouseY < rectY + rectH) {
    mouseHoveredPB = true; //If mouse is hovered
  } else {
    mouseHoveredPB = false; // If mouse is not
  }
  if (mouseHoveredPB == true) {
    fill(playButtonBoxH);
    rect(rectX, rectY, rectW, rectH);
    fill(playButtonTriH);
    triangle(playButtonX13, playButtonY1, playButtonX2, playButtonY2, playButtonX13, playButtonY3);
  } else {
    fill(playButtonBox);
    rect(rectX, rectY, rectW, rectH);
    fill(playButtonTri);
    triangle(playButtonX13, playButtonY1, playButtonX2, playButtonY2, playButtonX13, playButtonY3);
  }
  fill(clear);
}
//
void mousePressed() {
}
//
void keyPressed() {
}
//
