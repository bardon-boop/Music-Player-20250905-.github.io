// Buttons
//
<<<<<<< HEAD
int screenWidth, screenHeight;
float rectX, rectY, rectW, rectH;
float playButtonX13, playButtonX2, playButtonY1, playButtonY2, playButtonY3;
boolean mouseHovered, playEnlarged, mouseClick;
int delayTime, startTime;

=======
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
boolean mouseHoveredPB, mouseHoveredEB, mouseClicked;
boolean nightToggle;
>>>>>>> 8c83074fa20fc02f01c152582b35bcc5c62b48f2
void setup() {
  size(1000, 700);
  screenWidth = width;
  screenHeight = height;
  mouseClick = false;
  delayTime = 200;
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
<<<<<<< HEAD
  
}
//
void draw() {
  background(200);
  //Repopulation
  playButtonX13 = rectX + rectW * 1/4;
  playButtonX2 = rectX + rectW * 3/4;
  playButtonY1 = rectY + rectH * 1/4;
  playButtonY2 = rectY + rectH * 1/2;
  playButtonY3 = rectY + rectH * 3/4;
  rectX = screenWidth * 1/2 - rectW * 1/2;
  rectY = screenHeight * 1/2 - rectH * 1/2;
  //
  //Draws play button
  rect(rectX, rectY, rectW, rectH, 10);
  triangle(playButtonX13, playButtonY1, playButtonX2, playButtonY2, playButtonX13, playButtonY3);
  //Boolean and mouse loc check
  //println(mouseX, mouseY);
  //println(mouseHovered, playEnlarged);
  println(mouseClick);
  if (startTime + delayTime <= millis()) {
    mouseClick = false;
  }
  if (rectX < mouseX && mouseX < rectX + rectW && rectY < mouseY && mouseY < rectY + rectH) {
    mouseHovered = true;
  } else {
    mouseHovered = false;
  }
  if (rectW > screenWidth * 1/10) {
    playEnlarged = true;
  } else {
    playEnlarged = false;
  }
  if (mouseHovered == true) {
    if (playEnlarged == false && mouseClick == false) {
      rectW *= 1.1;
      rectH *= 1.1;
=======
  //Colour Declaration and Population
  developingColourV(); //See Cpop
  //
  nightToggle = false;
  mouseClicked = false;
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
    if (mouseClicked == false) {
      playButtonHovered();
    } else {
      playButtonNH();
>>>>>>> 8c83074fa20fc02f01c152582b35bcc5c62b48f2
    }
  } else {
    playButtonNH();
  }
<<<<<<< HEAD
  if (mouseHovered == false || mouseClick == true) {
    if (playEnlarged == true) {
      rectW /= 1.1;
      rectH /= 1.1;
    }
=======
  //
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
>>>>>>> 8c83074fa20fc02f01c152582b35bcc5c62b48f2
  }
  fill(clear);
}

//
void mousePressed() {
<<<<<<< HEAD
  mouseClick = true;
  startTime = millis();
  println(startTime, delayTime);
=======
  if (mouseHoveredEB == true) {
    quitOut();
  }
  if (mouseHoveredPB == true) {
    if (mouseClicked == false) {
      mouseClicked = true;
    } else {
      mouseClicked = false;
    }
  }
>>>>>>> 8c83074fa20fc02f01c152582b35bcc5c62b48f2
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
