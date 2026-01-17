// Buttons
//
int screenWidth, screenHeight;
float rectX, rectY, rectW, rectH;
float playButtonX13, playButtonX2, playButtonY1, playButtonY2, playButtonY3;
boolean mouseHovered, playEnlarged, mouseClick;
int delayTime, startTime;

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
  playButtonX13 = rectX + rectW * 1/4;
  playButtonX2 = rectX + rectW * 3/4;
  playButtonY1 = rectY + rectH * 1/4;
  playButtonY2 = rectY + rectH * 1/2;
  playButtonY3 = rectY + rectH * 3/4;
  rect(rectX, rectY, rectW, rectH);
  triangle(playButtonX13, playButtonY1, playButtonX2, playButtonY2, playButtonX13, playButtonY3);
  
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
    }
  }
  if (mouseHovered == false || mouseClick == true) {
    if (playEnlarged == true) {
      rectW /= 1.1;
      rectH /= 1.1;
    }
  }
}

//
void mousePressed() {
  mouseClick = true;
  startTime = millis();
  println(startTime, delayTime);
}
//
void keyPressed() {
}
//
