// NOTE FOR MR.MERCER (PLEASE READ): If you contrast planned divisions to ones defined in my actual ui, they are very obviously different.
// This is due to a lack of foresight on my end on the actual space taken up by each square, and thus, changes had to be made to make the UI better suited for the screen given.
// Hope you understand this discrepancy, if not, please e-mail me or talk with me in class about finding a solution.

void setup() {
  
fullScreen();

}

String artistName = "Placeholder";
String songName = "Placeholder";
int appHeight = displayHeight;
int appWidth = displayWidth;
float easeRate = 4;
float aniHeight = displayHeight * 1/15;
boolean mousetouchlyrics = false;
boolean lyricsdropped = false;
boolean dropdown = false;
int volume = 0;
  
void draw() {
  background(0);
  textSize(32);
  stroke(80);
  strokeWeight(7);
  line(0, displayWidth * 1/18, displayWidth, displayWidth * 1/18);
  noStroke();
  fill(12, 12, 12);
  rect(0, 0, displayWidth, displayWidth * 1/18); 
  fill(30);
  rect(0, 0, displayWidth * 1/18, displayWidth * 1/18); // first menu button
  fill(25);
  rect(displayWidth * 1/18, 0, displayWidth * 1/18, displayWidth * 1/18); // second menu button
  fill(100, 0, 0); // Next 3 lines define music duration ring
  ellipse(displayWidth * 1/2, displayHeight * 13/20, displayWidth * 1/9, displayWidth * 1/9);
  fill(0);
  ellipse(displayWidth * 1/2, displayHeight * 13/20, displayWidth * 7/72, displayWidth * 7/72);
  fill(100, 0, 0);
  rect(displayWidth * 11/16 - displayWidth * 1/256, displayHeight * 7/32, (displayWidth * 1/64), displayHeight * 2/7, 70); // Volume bar
  fill(75, 0, 0);
  ellipse((displayWidth * 11/16) + displayWidth * 1/256, (displayHeight * 4/9) + displayHeight * 1/64, displayWidth * 1/20, displayWidth * 1/20); // Volume icon or circle
  rect(displayWidth * 9/64, displayHeight * 9/64, displayWidth * 5/18, displayWidth * 5/18, 10); // Album cover shadow
  fill(100, 0, 0);
  rect(displayWidth * 1/8, displayHeight * 1/8, displayWidth * 5/18, displayWidth * 5/18); // Album cover placeholder
  textSize(50);
  text(songName, displayWidth * 1/8, displayHeight * 11/16);
  textSize(27);
  text(artistName, displayWidth * 1/8, displayHeight * 23/32);
  
  rect(displayWidth * 13/36 + 2, displayHeight * 15/18, displayWidth * 1/18, displayWidth * 1/18, 20);
  rect(displayWidth * 15/36 + 1, displayHeight * 15/18, displayWidth * 1/18, displayWidth * 1/18, 20);
  rect(displayWidth * 17/36, displayHeight * 15/18, displayWidth * 1/18, displayWidth * 1/18, 20);
  rect(displayWidth * 19/36 - 1, displayHeight * 15/18, displayWidth * 1/18, displayWidth * 1/18, 20);
  rect(displayWidth * 21/36 - 2, displayHeight * 15/18, displayWidth * 1/18, displayWidth * 1/18, 20);
  // rectangles above are the future music control buttons
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

  if (mouseX >= displayWidth * 6/10 && mouseX <= displayWidth * 6/10 + displayWidth * 5/16 && mouseY >= displayHeight * 1/8 && mouseY <= displayHeight * 1/8 + displayHeight * 1/15) {
    mousetouchlyrics = true;
  } else {
    if (dropdown == false) {
      mousetouchlyrics = false;
    } else {
      if (mouseX >= displayWidth * 6/10 && mouseX <= displayWidth * 6/10 + displayWidth * 5/16 && mouseY >= displayHeight * 1/8 && mouseY <= displayHeight * 1/8 + displayHeight * 1/2) {
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
      triangle(displayWidth * 6/10 + (displayWidth * 5/32 - displayWidth * 1/32), displayHeight * 7/32, displayWidth * 6/10 + (displayWidth * 5/32 + displayWidth * 1/32), displayHeight * 7/32, displayWidth * 6/10 + displayWidth * 5/32, displayHeight * 1/4); // dropdown triangle when lyrics hovered
    }
  }
  if (dropdown == false) {
    aniHeight += (displayHeight * 1/15 - aniHeight)/ easeRate;
    rect(displayWidth * 6/10, displayHeight * 1/8, displayWidth * 5/16, aniHeight, 10);
  } else {
    aniHeight += (displayHeight * 0.5 - aniHeight)/ easeRate;
    rect(displayWidth * 6/10, displayHeight * 1/8, displayWidth * 5/16, aniHeight, 10);
  }
  // ^ logic for creating lyrics box depnding on it being toggled or not
}

void mousePressed() {
  if (dropdown == false) {
    if (mouseX >= displayWidth * 6/10 && mouseX <= displayWidth * 5/8 + displayWidth * 5/16 && mouseY >= displayHeight * 1/8 && mouseY <= displayHeight * 1/8 + displayHeight * 1/15) {
      dropdown = true;
    }
  } else {
    if (mouseX >= displayWidth * 6/10 && mouseX <= displayWidth * 5/8 + displayWidth * 5/16 && mouseY >= displayHeight * 1/8 && mouseY <= displayHeight * 1/8 + displayHeight * 1/2) {
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
