// Text Setup & Printing
//
void textStartUp() {
  stringLocX[0] = screenWidth * 1/8;
  stringLocX[1] = screenWidth * 1/8;
  //
  stringLocY[0] = screenHeight * 21/32;
  stringLocY[1] = screenHeight * 3/4;
  //
  stringLocW[0] = screenWidth * 1/9;
  stringLocW[1] = screenWidth * 1/10;
  //
  stringLocH[0] = screenHeight * 1/13;
  stringLocH[1] = screenHeight * 1/13;
  //
  // String Pop
  textStrings[0] = songData[songDetermined].title();
  textStrings[1] = songData[songDetermined].author();
  fontChosen = "Trebuchet MS";
  //
  float trebuchetFontHard = 64.0;
  trebuchetAR = trebuchetFontHard / stringLocH[0];
  for (int i = 0; i < 2; i++) {
    fontSize[i] = stringLocH[i] * trebuchetAR;
  }
  printArray(textStrings);
  //printArray(fontSize);
}

void printText() {
  populateMetaData();
  textStrings[0] = songData[songDetermined].title();
  textStrings[1] = songData[songDetermined].author();
  float textWidthDecrease = 0.95; //5% derease
  PFont text;
  for ( int i = 0; i < 2; i++ ) {
    text = createFont(fontChosen, fontSize[i]);
    textFont(text, fontSize[i]);
    while ( textWidth(textStrings[i]) > stringLocW[i]) {
      //ERROR: Possible infinite loop if while loop condition cannot be satisfied
      fontSize[i] *= textWidthDecrease;
      textFont(text, fontSize[i]);
    } //End While error check text-wrap
    fill((i == 0) ? textSong : textArtist);
    text(textStrings[i], stringLocX[i], stringLocY[i], stringLocW[i], stringLocH[i]);
    //println(stringLocX[i], stringLocY[i], stringLocW[i], stringLocH[i]); //Checking each box's parameters
  } //End FOR Loop, Font Size Check in DIVs
}
