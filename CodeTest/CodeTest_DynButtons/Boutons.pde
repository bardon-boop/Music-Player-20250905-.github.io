void playButtonNoH() {
  fill(playB);
  rect(rectX, rectY, rectW, rectH);
  fill(playT);
  triangle(playButtonX13, playButtonY1, playButtonX2, playButtonY2, playButtonX13, playButtonY3);
} // End Hovered Program

void playButtonHovered() {
  fill(playBH);
  rect(rectX, rectY, rectW, rectH);
  fill(playTH);
  triangle(playButtonX13, playButtonY1, playButtonX2, playButtonY2, playButtonX13, playButtonY3);
} //End not Hovered Program

void exitButtonHovered() {
  fill(exitHo);
  rect(exitX, exitY, exitW, exitH);
} // End Hovered Program

void exitButtonNoH() {
  fill(exit);
  rect(exitX, exitY, exitW, exitH);
} //End not Hovered Program











void nightModeColourReset() {
  if (nightToggle == false) {
    playB = playButtonBox;
    playT = playButtonTri;
    playBH = playButtonBoxH;
    playTH = playButtonTriH;
    exit = exitButtonC;
    exitHo = exitButtonCH;
  } else {
    playB = playButtonBoxN;
    playT = playButtonTriN;
    playBH = playButtonBoxHN;
    playTH = playButtonTriHN;
    exit = exitButtonCN;
    exitHo = exitButtonCHN;
  }
}//End Colour Reset
