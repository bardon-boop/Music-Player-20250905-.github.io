// New ideas for program: try and integrate floats, import song?
/*
void setup() {
fullScreen();
}

float easeRate = 4;
float aniHeight = displayHeight * 1/15;
boolean mousetouchlyrics = false;
boolean lyricsdropped = false;
boolean dropdown = false;
int volume = 0;

void draw() {
  background(0);
  textSize(32);
  noStroke();
  fill(100, 0, 0);
  rect(displayWidth * 11/16 - displayWidth * 1/256, displayHeight * 7/32, (displayWidth * 1/64), displayHeight * 2/7, 70); // Volume bar
  fill(75, 0, 0);
  ellipse((displayWidth * 11/16) + displayWidth * 1/256, (displayHeight * 4/9) + displayHeight * 1/64, displayWidth * 1/20, displayWidth * 1/20); // Volume icon or circle
  rect(displayWidth * 9/64, displayHeight * 9/64, displayWidth * 1/3, (displayHeight * (displayWidth * 1/3)/ displayHeight), 10); // Album cover shadow
  fill(100, 0, 0);
  rect(displayWidth * 1/8, displayHeight * 1/8, displayWidth * 1/3, (displayHeight * (displayWidth * 1/3)/ displayHeight)); // Album cover placeholder
  fill (75, 0, 0);
  if (volume >= 1) {
    rect(displayWidth * 11/16 - displayWidth * 1/512, displayHeight * 2/7 + displayHeight * 7/32 - displayHeight * 1/8, displayWidth * 1/64 - displayWidth * 1/256, displayWidth * 1/64 - displayWidth * 1/256);
    if (volume >= 2) {
      rect(displayWidth * 11/16 - displayWidth * 1/512, displayHeight * 2/7 + displayHeight * 7/32 - displayHeight * 1/8 - (displayWidth * 1/64), displayWidth * 1/64 - displayWidth * 1/256, displayWidth * 1/64 - displayWidth * 1/256);
      if (volume >= 3) {
        rect(displayWidth * 11/16 - displayWidth * 1/512, displayHeight * 2/7 + displayHeight * 7/32 - displayHeight * 1/8 - 2 * (displayWidth * 1/64), displayWidth * 1/64 - displayWidth * 1/256, displayWidth * 1/64 - displayWidth * 1/256);
        if (volume >= 4) {
          rect(displayWidth * 11/16 - displayWidth * 1/512, displayHeight * 2/7 + displayHeight * 7/32 - displayHeight * 1/8 - 3 * (displayWidth * 1/64), displayWidth * 1/64 - displayWidth * 1/256, displayWidth * 1/64 - displayWidth * 1/256);
          if (volume >= 5) {
            rect(displayWidth * 11/16 - displayWidth * 1/512, displayHeight * 2/7 + displayHeight * 7/32 - displayHeight * 1/8 - 4 * (displayWidth * 1/64), displayWidth * 1/64 - displayWidth * 1/256, displayWidth * 1/64 - displayWidth * 1/256);
            // ^ squares suggesting volume level
          }
        }
      }
    }
  }

  if (mouseX >= displayWidth * 5/8 && mouseX <= displayWidth * 5/8 + displayWidth * 5/16 && mouseY >= displayHeight * 1/8 && mouseY <= displayHeight * 1/8 + displayHeight * 1/15) {
    mousetouchlyrics = true;
  } else {
    if (dropdown == false) {
      mousetouchlyrics = false;
    } else {
      if (mouseX >= displayWidth * 5/8 && mouseX <= displayWidth * 5/8 + displayWidth * 5/16 && mouseY >= displayHeight * 1/8 && mouseY <= displayHeight * 1/8 + displayHeight * 1/2) {
        mousetouchlyrics = true;
      } else {
        mousetouchlyrics = false;
      }
    }
  }
  if (mousetouchlyrics == false) {
    fill(100, 0, 0);
  } else {
    fill(210, 0, 0);
    if (aniHeight <= displayHeight * 1/15 + 1) {
      triangle(displayWidth * 5/8 + (displayWidth * 5/32 - displayWidth * 1/32), displayHeight * 7/32, displayWidth * 5/8 + (displayWidth * 5/32 + displayWidth * 1/32), displayHeight * 7/32, displayWidth * 5/8 + displayWidth * 5/32, displayHeight * 1/4); // dropdown triangle when lyrics hovered
    }
  }
  if (dropdown == false) {
    aniHeight += (displayHeight * 1/15 - aniHeight)/ easeRate;
    rect(displayWidth * 5/8, displayHeight * 1/8, displayWidth * 5/16, aniHeight, 10);
  } else {
    aniHeight += (displayHeight * 0.5 - aniHeight)/ easeRate;
    rect(displayWidth * 5/8, displayHeight * 1/8, displayWidth * 5/16, aniHeight, 10);
  }
  // ^ logic for creating lyrics box depnding on it being toggled or not
}

void mousePressed() {
  if (dropdown == false) {
    if (mouseX >= displayWidth * 5/8 && mouseX <= displayWidth * 5/8 + displayWidth * 5/16 && mouseY >= displayHeight * 1/8 && mouseY <= displayHeight * 1/8 + displayHeight * 1/15) {
      dropdown = true;
    }
  } else {
    if (mouseX >= displayWidth * 5/8 && mouseX <= displayWidth * 5/8 + displayWidth * 5/16 && mouseY >= displayHeight * 1/8 && mouseY <= displayHeight * 1/8 + displayHeight * 1/2) {
      dropdown = false;
    }
  }
}

void keyPressed() {
  if (keyCode == UP) {
    if (volume <= 4)
      volume = volume + 1;
  } else if (keyCode == DOWN) {
    if (volume >= 1)
      volume = volume - 1;
  }
}
// below is my button code
*/

fullScreen();
 int screenHeight = displayHeight;
 int screenWidth = displayWidth;
 float ButtonX1 = screenWidth * 1/18;
 float ButtonY1 = screenHeight * 15/18;
 float ButtonWidth = screenWidth * 1/18;
 float playButtonX13 = screenWidth * 1/18 + screenWidth * 1/18 * 1/4;
 float playButtonX2 = screenWidth * 1/18 + screenWidth * 1/18 * 3/4;
 float playButtonY1 = screenHeight * 15/18 + screenWidth * 1/18 * 1/4;
 float playButtonY2 = screenHeight * 15/18 + screenWidth * 1/18 * 1/2;
 float playButtonY3 = screenHeight * 15/18 + screenWidth * 1/18 * 3/4;
 float pause1ButtonX = 2 * (screenWidth * 1/18) + screenWidth * 1/18 * 1/4;
 float pause1ButtonY = (screenHeight * 15/18) + screenWidth * 1/18 * 1/4;
 float pause1ButtonWidth = screenWidth * 1/18 * 3/16;
 float pause1ButtonHeight = screenWidth * 1/18 * 1/2;
 float pause2ButtonX = 2 * (screenWidth * 1/18) + screenWidth * 1/18 * 9/16;
 float pause2ButtonY = (screenHeight * 15/18) + screenWidth * 1/18 * 1/4;
 float pause2ButtonWidth = screenWidth * 1/18 * 3/16;
 float pause2ButtonHeight = screenWidth * 1/18 * 1/2;
 float nextSongX13t = 3 * screenWidth * 1/18 + screenWidth * 1/18 * 1/4;
 float nextSongX2t = 3 * screenWidth * 1/18 + screenWidth * 1/18 * 1/2;
 float nextSongY1t = playButtonY1;
 float nextSongY2t = playButtonY2;
 float nextSongY3t = playButtonY3;
 float nextSongX = 3 * screenWidth * 1/18 + screenWidth * 1/18 * 9/16;
 float nextSongY = screenHeight * 15/18 + screenWidth * 1/18 * 1/4;
 float nextSongWid = screenWidth * 1/18 * 3/16;
 float nextSongHi = screenWidth * 1/18 * 1/2;
 float lastSongX13t = 4 * screenWidth * 1/18 + screenWidth * 1/18 * 3/4;
 float lastSongY1t = screenHeight * 15/18 + screenWidth * 1/18 * 1/4;
 float lastSongX2t = 4 * screenWidth * 1/18 + screenWidth * 1/18 * 1/2;
 float lastSongY2t = screenHeight * 15/18 + screenWidth * 1/18 * 1/2;
 float lastSongY3t = screenHeight * 15/18 + screenWidth * 1/18 * 3/4;
 float lastSongX = 4 * screenWidth * 1/18 + screenWidth * 1/18 * 1/4;
 float lastSongY = screenHeight * 15/18 + screenWidth * 1/18 * 1/4;
 float lastSongWid = screenWidth * 1/18 * 3/16;
 float lastSongHi = screenWidth * 1/18 * 1/2;
 float line1X = 5 * screenWidth * 1/18 + screenWidth * 1/18 * 1/4;
 float line1Y = screenHeight * 15/18 + screenWidth * 1/18 * 5/8;
 float line1Xp2B = 5 * screenWidth * 1/18 + screenWidth * 1/18 * 7/16;
 float line1Yp2B = screenHeight * 15/18 + screenWidth * 1/18 * 5/8;
 float line2Xp2B = 5 * screenWidth * 1/18 + screenWidth * 1/18 * 9/16;
 float line2Yp2B = screenHeight * 15/18 + screenWidth * 1/18 * 3/8;
 float line3Xp2 = 5 * screenWidth * 1/18 + screenWidth * 1/18 * 5/8;
 float line3Yp2 = screenHeight * 15/18 + screenWidth * 1/18 * 3/8;
 float line4X = 5 * screenWidth * 1/18 + screenWidth * 1/18 * 1/4;
 float line4Y = screenHeight * 15/18 + screenWidth * 1/18 * 3/8;
 float line4Xp2B = 5 * screenWidth * 1/18 + screenWidth * 1/18 * 7/16;
 float line4Yp2B = screenHeight * 15/18 + screenWidth * 1/18 * 3/8;
 
 
 
 
 
 square(ButtonX1, ButtonY1, ButtonWidth);
 square(ButtonX1 * 2, ButtonY1, ButtonWidth);
 square(ButtonX1 * 3, ButtonY1, ButtonWidth);
 square(ButtonX1 * 4, ButtonY1, ButtonWidth);
 square(ButtonX1 * 5, ButtonY1, ButtonWidth);
 
 triangle(playButtonX13, playButtonY1, playButtonX2, playButtonY2, playButtonX13, playButtonY3);
 rect(pause1ButtonX, pause1ButtonY, pause1ButtonWidth, pause1ButtonHeight);
 rect(pause2ButtonX, pause2ButtonY, pause2ButtonWidth, pause2ButtonHeight);
 triangle(nextSongX13t, nextSongY1t, nextSongX2t, nextSongY2t, nextSongX13t, nextSongY3t);
 rect(nextSongX, nextSongY, nextSongWid, nextSongHi);
 triangle(lastSongX13t, lastSongY1t, lastSongX2t, lastSongY2t, lastSongX13t, lastSongY3t);
 rect(lastSongX, lastSongY, lastSongWid, lastSongHi);
 line(line1X, line1Y, line1Xp2B, line1Yp2B);
 line(line1Xp2B, line1Yp2B, line2Xp2B, line2Yp2B);
 line(line2Xp2B, line2Yp2B, line3Xp2, line3Yp2);
 line(line4X, line4Y, line4Xp2B, line4Yp2B);
