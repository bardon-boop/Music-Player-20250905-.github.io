void printButtons() {
  printPB();
  printPaB();
  printNB();
  printLB();
  printShuffle();
} // End printButtons

void toggleNightM() {
  if (nightToggle == true) {
    nightToggle = false;
  } else {
    nightToggle = true;
  }
} // End toggleNightM

void printExit() {
  fill(exit);
  rect(exitX, exitY, exitW, exitH);
}

void printExitH() {
  fill(exitHo);
  rect(exitX, exitY, exitW, exitH);
}

void printPB() {
  fill(playB);
  rect(soundConX1, soundConY1, soundConW1, soundConH1);
  fill(playT);
  triangle(playButtonX13, playButtonY1, playButtonX2, playButtonY2, playButtonX13, playButtonY3);
} // End printPB
void printPBH() {
  fill(playBH);
  rect(soundConX1, soundConY1, soundConW1, soundConH1);
  fill(playTH);
  triangle(playButtonX13, playButtonY1, playButtonX2, playButtonY2, playButtonX13, playButtonY3);
} // End printPBH

void printPaB() {
  fill(pauseB);
  rect(soundConX2, soundConY2, soundConW2, soundConH2);
  fill(pauseR);
  rect(pause1ButtonX, pause1ButtonY, pause1ButtonWidth, pause1ButtonHeight);
  rect(pause2ButtonX, pause2ButtonY, pause2ButtonWidth, pause2ButtonHeight);
} // End printPaB
void printPaBH() {
  fill(pauseBH);
  rect(soundConX2, soundConY2, soundConW2, soundConH2);
  fill(pauseRH);
  rect(pause1ButtonX, pause1ButtonY, pause1ButtonWidth, pause1ButtonHeight);
  rect(pause2ButtonX, pause2ButtonY, pause2ButtonWidth, pause2ButtonHeight);
} // End printPaBH

void printNB() {
  fill(nextB);
  rect(soundConX3, soundConY3, soundConW3, soundConH3);
  fill(nextR);
  rect(nextSongX, nextSongY, nextSongWid, nextSongHi);
  fill(nextT);
  triangle(nextSongX13t, nextSongY1t, nextSongX2t, nextSongY2t, nextSongX13t, nextSongY3t);
} // End printNB
void printNBH() {
  fill(nextBH);
  rect(soundConX3, soundConY3, soundConW3, soundConH3);
  fill(nextRH);
  rect(nextSongX, nextSongY, nextSongWid, nextSongHi);
  fill(nextTH);
  triangle(nextSongX13t, nextSongY1t, nextSongX2t, nextSongY2t, nextSongX13t, nextSongY3t);
} // End printNBH

void printLB() {
  fill(lastB);
  rect(soundConX4, soundConY4, soundConW4, soundConH4);
  fill(lastT);
  triangle(lastSongX13t, lastSongY1t, lastSongX2t, lastSongY2t, lastSongX13t, lastSongY3t); //last song button
  fill(lastR);
  rect(lastSongX, lastSongY, lastSongWid, lastSongHi); //last song button
} // End printLB
void printLBH() {
  fill(lastBH);
  rect(soundConX4, soundConY4, soundConW4, soundConH4);
  fill(lastTH);
  triangle(lastSongX13t, lastSongY1t, lastSongX2t, lastSongY2t, lastSongX13t, lastSongY3t); //last song button
  fill(lastRH);
  rect(lastSongX, lastSongY, lastSongWid, lastSongHi); //last song button
} // End printLBH

void printShuffle() {
  fill(shuffleB);
  rect(soundConX5, soundConY5, soundConW5, soundConH5);
  line(line1X, line1Y, line1Xp2B, line1Yp2B);
  line(line1Xp2B, line1Yp2B, line2Xp2B, line2Yp2B);
  line(line2Xp2B, line2Yp2B, line3Xp2, line3Yp2);
  line(line4X, line4Y, line4Xp2B, line4Yp2B);
  line(line4Xp2B, line4Yp2B, line5Xp2B, line5Yp2B);
  line(line5Xp2B, line5Yp2B, line6Xp2, line6Yp2);
  fill(shuffleT);
  triangle(shuffleX1245t, shuffleY1t, shuffleX1245t, shuffleY2t, shuffleX36t, shuffleY3t);
  triangle(shuffleX1245t, shuffleY4t, shuffleX1245t, shuffleY5t, shuffleX36t, shuffleY6t);
} // End printShuffle
void printShuffleH() {
  fill(shuffleBH);
  rect(soundConX5, soundConY5, soundConW5, soundConH5);
  line(line1X, line1Y, line1Xp2B, line1Yp2B);
  line(line1Xp2B, line1Yp2B, line2Xp2B, line2Yp2B);
  line(line2Xp2B, line2Yp2B, line3Xp2, line3Yp2);
  line(line4X, line4Y, line4Xp2B, line4Yp2B);
  line(line4Xp2B, line4Yp2B, line5Xp2B, line5Yp2B);
  line(line5Xp2B, line5Yp2B, line6Xp2, line6Yp2);
  fill(shuffleTH);
  triangle(shuffleX1245t, shuffleY1t, shuffleX1245t, shuffleY2t, shuffleX36t, shuffleY3t);
  triangle(shuffleX1245t, shuffleY4t, shuffleX1245t, shuffleY5t, shuffleX36t, shuffleY6t);
} // End printShuffleH

void printStatics() {
  fill(islandC);
  rect(topIslandX, topIslandY, topIslandW, topIslandH);
} // End printStatics

void UILogic() {
  background(BG);
  printStatics();
  if (soundConX1 < mouseX && soundConX1 + soundConW1 > mouseX && soundConY1 < mouseY && soundConY1 + soundConH1 > mouseY) {
    mouseHoveredPB = true;
    printPB();
  } else {
    mouseHoveredPB = false;
    printPBH();
  }
  if (soundConX2 < mouseX && soundConX2 + soundConW2 > mouseX && soundConY2 < mouseY && soundConY2 + soundConH2 > mouseY) {
    mouseHoveredPaB = true;
    printPaB();
  } else {
    mouseHoveredPaB = false;
    printPaBH();
  }

  if (soundConX3 < mouseX && soundConX3 + soundConW3 > mouseX && soundConY3 < mouseY && soundConY3 + soundConH3 > mouseY) {
    mouseHoveredNB = true;
    printNB();
  } else {
    mouseHoveredNB = false;
    printNBH();
  }

  if (soundConX4 < mouseX && soundConX4 + soundConW4 > mouseX && soundConY4 < mouseY && soundConY4 + soundConH4 > mouseY) {
    mouseHoveredLB = true;
    printLB();
  } else {
    mouseHoveredLB = false;
    printLBH();
  }
  if (soundConX5 < mouseX && soundConX5 + soundConW5 > mouseX && soundConY5 < mouseY && soundConY5 + soundConH5 > mouseY) {
    mouseHoveredSB = true;
    printShuffle();
  } else {
    mouseHoveredSB = false;
    printShuffleH();
  }
  if (exitX < mouseX && exitX + exitW > mouseX && exitY < mouseY && exitY + exitH > mouseY) {
    mouseHoveredE = true;
    printExitH();
  } else {
    mouseHoveredE = false;
    printExit();
  }
} // End UILogic
