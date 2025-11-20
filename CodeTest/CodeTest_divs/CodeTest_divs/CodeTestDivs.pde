// NOTE FOR MR.MERCER (PLEASE READ): If you contrast planned divisions to ones defined in my actual ui, they are very obviously different.
// This is due to a lack of foresight on my end on the actual space taken up by each square, and thus, changes had to be made to make the UI better suited for the screen given.
// I Hope you understand this discrepancy, if not, please e-mail me or talk with me in class about finding a solution.
// D = Diameter, SB = Soft Bezel, t = Defines a triangle

  fullScreen();
  int appHeight = displayHeight;
  int appWidth = displayWidth;
  float homeBGX = 0;
  float homeBGY = 0;
  float homeBGW = appWidth;
  float homeBGH = appWidth * 1/18;
  float homeButtonX = 0;
  float homeButtonY = 0;
  float homeButtonW = appWidth * 1/18;
  float homeButtonH = appWidth * 1/18;
  float homeButton2X = appWidth * 1/18;
  float homeButton2Y = 0;
  float homeButton2W = appWidth * 1/18;
  float homeButton2H = appWidth * 1/18;
  float outRingX = appWidth * 1/2 - appWidth * 1/18;
  float outRingY = appHeight * 13/20 - appWidth * 1/18;
  float outRingXD = appWidth * 1/9;
  float outRingYD = appWidth * 1/9;
  float volumeBarX = appWidth * 11/16 - appWidth * 1/256;
  float volumeBarY = appHeight * 7/32;
  float volumeBarW = appWidth * 1/64;
  float volumeBarH = appHeight * 2/7;
  float SBvb = 70;
  float volumeCirX = appWidth * 11/16 + appWidth * 1/256 - appWidth * 1/40;
  float volumeCirY = appHeight * 4/9 + appHeight * 1/64 - appWidth * 1/40;
  float volumeCirXD = appWidth * 1/20;
  float volumeCirYD = appWidth * 1/20;
  float albumCX = appWidth * 1/8;
  float albumCY = appHeight * 1/8;
  float albumCW = appWidth * 5/18;
  float albumCH = appWidth * 5/18;
  float txtSX = appWidth * 1/8;
  float txtSY = appHeight * 11/16;
  float txtSW = appWidth * 1/9;
  float txtSH = appHeight * 1/18;
  float txtAX = appWidth * 1/8;
  float txtAY = appHeight * 3/4;
  float txtAW = appWidth * 1/10;
  float txtAH = appHeight * 1/20;
  float SBSoundCon1 = 20;
  float SBSoundCon2 = 20;
  float SBSoundCon3 = 20;
  float SBSoundCon4 = 20;
  float SBSoundCon5 = 20;
  //Integers added to adjust for slight rounding errors occuring
  float soundConX1 = appWidth * 13/36 + 2;
  float soundConX2 = appWidth * 15/36 + 1;
  float soundConX3 = appWidth * 17/36;
  float soundConX4 = appWidth * 19/36 - 1;
  float soundConX5 = appWidth * 21/36 - 2;
  float soundConY1 = appHeight * 15/18;
  float soundConY2 = appHeight * 15/18;
  float soundConY3 = appHeight * 15/18;
  float soundConY4 = appHeight * 15/18;
  float soundConY5 = appHeight * 15/18;
  float soundConW1 = appWidth * 1/18;
  float soundConW2 = appWidth * 1/18;
  float soundConW3 = appWidth * 1/18;
  float soundConW4 = appWidth * 1/18;
  float soundConW5 = appWidth * 1/18;
  float soundConH1 = appWidth * 1/18;
  float soundConH2 = appWidth * 1/18;
  float soundConH3 = appWidth * 1/18;
  float soundConH4 = appWidth * 1/18;
  float soundConH5 = appWidth * 1/18;
  float volumeNotchX1 = appWidth * 11/16 - appWidth * 1/512;
  float volumeNotchX2 = appWidth * 11/16 - appWidth * 1/512;
  float volumeNotchX3 = appWidth * 11/16 - appWidth * 1/512;
  float volumeNotchX4 = appWidth * 11/16 - appWidth * 1/512;
  float volumeNotchX5 = appWidth * 11/16 - appWidth * 1/512;
  float volumeNotchY1 = appHeight * 2/7 + appHeight * 3/32;
  float volumeNotchY2 = appHeight * 2/7 + appHeight * 3/32 - appWidth * 1/64;
  float volumeNotchY3 = appHeight * 2/7 + appHeight * 3/32 - 2 * appWidth * 1/64;
  float volumeNotchY4 = appHeight * 2/7 + appHeight * 3/32 - 3 * appWidth * 1/64;
  float volumeNotchY5 = appHeight * 2/7 + appHeight * 3/32 - 4 * appWidth * 1/64;
  float volumeNotchWH1 = appWidth * 1/64 - appWidth * 1/256;
  float volumeNotchWH2 = appWidth * 1/64 - appWidth * 1/256;
  float volumeNotchWH3 = appWidth * 1/64 - appWidth * 1/256;
  float volumeNotchWH4 = appWidth * 1/64 - appWidth * 1/256;
  float volumeNotchWH5 = appWidth * 1/64 - appWidth * 1/256;
  float dropArrowX1t = appWidth * 6/10 + appWidth * 4/32;
  float dropArrowX2t = appWidth * 6/10 + appWidth * 6/32;
  float dropArrowX3t = appWidth * 6/10 + appWidth * 5/32;
  float dropArrowY1t = appHeight * 7/32;
  float dropArrowY2t = appHeight * 7/32;
  float dropArrowY3t = appHeight * 1/4;
  float lyricBoxX = appWidth * 6/10;
  float lyricBoxY = appHeight * 1/8;
  float lyricBoxW = appWidth * 5/16;
  float lyricBoxH = appHeight * 1/15;
  float SBlb = 10;
  
  
  rect(homeBGX, homeBGY, homeBGW, homeBGH);
  rect(homeButtonX, homeButtonY, homeButtonW, homeButtonH); // first menu button
  rect(homeButton2X, homeButton2Y, homeButton2W, homeButton2H); // second menu button
  rect(outRingX, outRingY, outRingXD, outRingYD); // Music Duration Ring
  rect(volumeBarX, volumeBarY, volumeBarW, volumeBarH, SBvb); // Volume bar
  rect(volumeCirX, volumeCirY, volumeCirXD, volumeCirYD); // Volume icon or circle
  rect(albumCX, albumCY, albumCW, albumCH); // Album cover placeholder
  rect(txtSX, txtSY, txtSW, txtSH);
  rect(txtAX, txtAY, txtAW, txtAH);

  rect(soundConX1, soundConY1, soundConW1, soundConH1, SBSoundCon1);
  rect(soundConX2, soundConY2, soundConW2, soundConH2, SBSoundCon2);
  rect(soundConX3, soundConY3, soundConW3, soundConH3, SBSoundCon3);
  rect(soundConX4, soundConY4, soundConW4, soundConH4, SBSoundCon4);
  rect(soundConX5, soundConY5, soundConW5, soundConH5, SBSoundCon5);
  // rectangles above are the future music control buttons
  square(volumeNotchX1, volumeNotchY1, volumeNotchWH1);
  square(volumeNotchX2, volumeNotchY2, volumeNotchWH2);
  square(volumeNotchX3, volumeNotchY3, volumeNotchWH3);
  square(volumeNotchX4, volumeNotchY4, volumeNotchWH4);
  square(volumeNotchX5, volumeNotchY5, volumeNotchWH5);
  // ^ squares suggesting volume level

  triangle(dropArrowX1t, dropArrowY1t, dropArrowX2t, dropArrowY2t, dropArrowX3t, dropArrowY3t); // dropdown triangle when lyrics hovered

  rect(lyricBoxX, lyricBoxY, lyricBoxW, lyricBoxH, SBlb);




/*
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
 */
