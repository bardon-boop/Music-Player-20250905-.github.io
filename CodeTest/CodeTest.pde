void setup() {
  fullScreen();
    int appWidth = displayWidth;
    int appHeight = displayHeight;
    float rectX = appWidth * 11/16;
    float rectY = appHeight * 7/32;
}

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
    triangle(displayWidth * 5/8 + (displayWidth * 5/32 - displayWidth * 1/32), displayHeight * 7/32, displayWidth * 5/8 + (displayWidth * 5/32 + displayWidth * 1/32), displayHeight * 7/32, displayWidth * 5/8 + displayWidth * 5/32, displayHeight * 1/4); // dropdown triangle when lyrics hovered
  }
  if (dropdown == false) {
    rect(displayWidth * 5/8, displayHeight * 1/8, displayWidth * 5/16, displayHeight * 1/15, 10);
  } else {
    rect(displayWidth * 5/8, displayHeight * 1/8, displayWidth * 5/16, displayHeight * 1/2, 10);
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
