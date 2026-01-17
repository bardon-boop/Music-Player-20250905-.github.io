void colourDeclaration() {
  nightToggling();
  developingColourV();
}// Ending Colour Pop
void nightToggling() {
  if (nightToggle == false) {
    nightToggle = true;
  } else {
    nightToggle = false;
  }
}


void developingColourV() {
  color black = #000000;
  color white = #FFFFFF;
  color red = #E30302;
  color mDarkRed = #BF2323;
  color darkRed = #981A1A;
  color lGray = #D6D6D6;
  color gray = #B9B9B9;
  color dGray = #484848;
  BG = gray;
  playButtonBox = darkRed;
  playButtonTri = red;
  playButtonBoxH = red;
  playButtonTriH = mDarkRed;
  exitButtonC = white;
  exitButtonCH = red;
  playButtonBoxN = dGray;
  playButtonTriN = lGray;
  playButtonBoxHN = lGray;
  playButtonTriHN = gray;
  exitButtonCN = white;
  exitButtonCHN = gray;
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
  clear = white;
} //End Colour Defintion
