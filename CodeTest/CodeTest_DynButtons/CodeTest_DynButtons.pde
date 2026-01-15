// Buttons
//
// Parameters Initiation
int screenWidth;
int screenHeight;
float exitX, exitY, exitW, exitH;
float rectX, rectY, rectW, rectH;
float playButtonX13, playButtonX2, playButtonY1, playButtonY2, playButtonY3;
//Colours Initiation
color BG, clear; //Black, White and BG are Greyscale
color playButtonBox, playButtonTri, playButtonBoxH, playButtonTriH;
color playButtonBoxN, playButtonTriN, playButtonBoxHN, playButtonTriHN;
color exitButtonC, exitButtonCH;
color exitButtonCN, exitButtonCHN;
boolean mouseHoveredPB, mouseHoveredEB;
boolean nightToggle;
void setup() {
  size(1000, 700);
  screenWidth = width;
  screenHeight = height;
  rectX = screenWidth * 1/2 - screenWidth * 1/20;
  rectY = screenHeight * 1/2 - screenHeight * 1/20;
  rectH = screenHeight * 1/10;
  rectW = screenWidth * 1/10;
  exitX = screenWidth * 19/20;
  exitY = 0;
  exitW = screenWidth * 1/20;
  exitH = screenWidth * 1/20;
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
  developingColourV(); //See Cpop
  //
  nightToggle = false;
} //End Setup
//
void draw() {
  background(BG);
  //println(mouseX, mouseY);
  if (rectX < mouseX && mouseX < rectX + rectW && rectY < mouseY && mouseY < rectY + rectH) {
    mouseHoveredPB = true; //If mouse is hovered
  } else {
    mouseHoveredPB = false; // If mouse is not
  }
  if (exitX < mouseX && mouseX < exitX + exitW && exitY < mouseY && mouseY < exitY + exitH) {
    mouseHoveredEB = true; //If mouse is hovered
  } else {
    mouseHoveredEB = false; // If mouse is not
  }
  if (mouseHoveredPB == true) {
    if (nightToggle == false) {
      fill(playButtonBoxH);
    } else {
      fill(playButtonBoxHN);
    }
    rect(rectX, rectY, rectW, rectH);
    if (nightToggle == false) {
      fill(playButtonTriH);
    } else {
      fill(playButtonTriHN);
    }
    triangle(playButtonX13, playButtonY1, playButtonX2, playButtonY2, playButtonX13, playButtonY3);
  } else {
    if (nightToggle ==false) {
      fill(playButtonBox);
    } else {
      fill(playButtonBoxN);
    }
    rect(rectX, rectY, rectW, rectH);
    if (nightToggle == false) {
      fill(playButtonTri);
    } else {
      fill (playButtonTriN);
    }
    triangle(playButtonX13, playButtonY1, playButtonX2, playButtonY2, playButtonX13, playButtonY3);
  }
  if (mouseHoveredEB == true) {
    if (nightToggle == false) {
      fill(exitButtonCH);
    } else {
      fill(exitButtonCHN);
    }
    rect(exitX, exitY, exitW, exitH);
  } else {
    fill(exitButtonC);
    rect(exitX, exitY, exitW, exitH);
  }
  fill(clear);
}
//
void mousePressed() {
  if (mouseHoveredEB == true) {
    quitOut();
  }
}
//
void keyPressed() {
  if (key == 'X' || key == 'x') {
    quitOut();
  }
  if (key == 'z') {
    if (nightToggle == false) {
      nightToggle = true;
    } else {
      nightToggle = false;
    }
    println(nightToggle);
  }
}

void quitOut() {
  noLoop();
  exit();
  println("PROGRAM ENDED");
}
//
