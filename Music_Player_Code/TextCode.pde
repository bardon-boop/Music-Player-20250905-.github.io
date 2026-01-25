// Text Setup & Printing
//
void textStartUp() {
  stringLocX[0] = screenWidth * 1/8;
  stringLocX[1] = screenWidth * 1/8;
  //
  stringLocY[0] = screenHeight * 21/32;
  stringLocY[1] = screenHeight * 3/4;
  //
  stringLocW[0] = screenWidth * 1/6;
  stringLocW[1] = screenWidth * 1/7;
  //
  stringLocH[0] = screenHeight * 1/13;
  stringLocH[1] = screenHeight * 1/13;
  //
  // String Pop
  fontChosen = "Trebuchet MS";
  textWidthDecrease = 0.95; //5% derease
  trebuchetFontHard = 64.0;
  trebuchetAR = trebuchetFontHard / stringLocH[0];
  }

void textSizing() {
    textStrings[0] = songData[songDetermined].title();
  if (textStrings[0] == "") {
    textStrings[0] = songData[songDetermined].fileName();
  }
  textStrings[1] = songData[songDetermined].author();
  for ( int i = 0; i < 2; i++ ) {
    fontSize[i] = stringLocH[i] * trebuchetAR;
    text[i] = createFont(fontChosen, fontSize[i]);
    textFont(text[i], fontSize[i]);
    while ( textWidth(textStrings[i]) > stringLocW[i]) {
      //ERROR: Possible infinite loop if while loop condition cannot be satisfied
      fontSize[i] *= textWidthDecrease;
      textFont(text[i], fontSize[i]);
    } //End While error check text-wrap
  }
}

void printText() {
  textSizing();
  textStrings[0] = songData[songDetermined].title();
  if (textStrings[0] == "") {
    textStrings[0] = songData[songDetermined].fileName();
  }
  textStrings[1] = songData[songDetermined].author();
  for (int i = 0; i < 2; i++) {
    fill((i == 0) ? textSong : textArtist);
    textFont(text[i], fontSize[i]);
    text(textStrings[i], stringLocX[i], stringLocY[i], stringLocW[i], stringLocH[i]);
    //println(stringLocX[i], stringLocY[i], stringLocW[i], stringLocH[i]); //Checking each box's parameters
  } //End FOR Loop, Font Size Check in DIVs
}
