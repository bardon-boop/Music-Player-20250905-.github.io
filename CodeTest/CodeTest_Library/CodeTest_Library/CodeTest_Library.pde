 fullScreen();
 int screenHeight = displayHeight;
 int screenWidth = displayWidth;
 float rectX = screenWidth * 1/4;
 float rectY = screenHeight * 1/4;
 float rectW = screenWidth * 1/2;
 float rectH = screenHeight * 1/2;
 //Play Button
 float playButtonX13 = rectX + rectW * 1/4;
 float playButtonX2 = rectX + rectW * 3/4;
 float playButtonY1 = rectY + rectH * 1/4;
 float playButtonY2 = rectY + rectH * 1/2;
 float playButtonY3 = rectY + rectH * 3/4;
 //Pause Button
 float pause1ButtonX = rectX + rectW * 1/4;
 float pause1ButtonY = rectY + rectH * 1/4;
 float pause1ButtonWidth = rectW * 3/16;
 float pause1ButtonHeight = rectH * 1/2;
 float pause2ButtonX = rectX + rectW * 9/16;
 float pause2ButtonY = rectY + rectH * 1/4;
 float pause2ButtonWidth = rectW * 3/16;
 float pause2ButtonHeight = rectH * 1/2;
 //Next Song Button
 float nextSongX13t = rectX + rectW * 1/4;
 float nextSongX2t = rectX + rectW * 1/2;
 float nextSongY1t = playButtonY1;
 float nextSongY2t = playButtonY2;
 float nextSongY3t = playButtonY3;
 float nextSongX = rectX + rectW * 9/16;
 float nextSongY = rectY + rectH * 1/4;
 float nextSongWid = rectW * 3/16;
 float nextSongHi = rectH * 1/2;
 //Last Song Button
 float lastSongX13t = rectX + rectW * 3/4;
 float lastSongY1t = rectY + rectH * 1/4;
 float lastSongX2t = rectX + rectW * 1/2;
 float lastSongY2t = rectY + rectH * 1/2;
 float lastSongY3t = rectY + rectH * 3/4;
 float lastSongX = rectX + rectW * 1/4;
 float lastSongY = rectY + rectH * 1/4;
 float lastSongWid = rectW * 3/16;
 float lastSongHi = rectH * 1/2;
 //Shuffle Button
 float line1X = rectX + rectW * 1/4;
 float line1Y = rectY + rectH * 5/8;
 float line1Xp2B = rectX + rectW * 7/16;
 float line1Yp2B = rectY + rectH * 5/8;
 float line2Xp2B = rectX + rectW * 9/16;
 float line2Yp2B = rectY + rectH * 3/8;
 float line3Xp2 = rectX + rectW * 5/8;
 float line3Yp2 = rectY + rectH * 3/8;
 float line4X = rectX + rectW * 1/4;
 float line4Y = rectY + rectH * 3/8;
 float line4Xp2B = rectX + rectW * 7/16;
 float line4Yp2B = rectY + rectH * 3/8;
 float line5Xp2B = rectX + rectW * 9/16;
 float line5Yp2B = rectY + rectH * 5/8;
 float line6Xp2 = rectX + rectW * 5/8;
 float line6Yp2 = rectY + rectH * 5/8;
 float shuffleX1245t = rectX + rectW * 5/8;
 float shuffleY1t = rectY + rectH * 5/16;
 float shuffleY2t = rectY + rectH * 7/16;
 float shuffleX36t = rectX + rectW * 3/4;
 float shuffleY3t = rectY + rectH * 3/8;
 float shuffleY4t = rectY + rectH * 9/16;
 float shuffleY5t = rectY + rectH * 11/16;
 float shuffleY6t = rectY + rectH * 5/8;
 
 rect(rectX, rectY, rectW, rectH);
triangle(playButtonX13, playButtonY1, playButtonX2, playButtonY2, playButtonX13, playButtonY3); //Play button

//rect(pause1ButtonX, pause1ButtonY, pause1ButtonWidth, pause1ButtonHeight); //Pause button
//rect(pause2ButtonX, pause2ButtonY, pause2ButtonWidth, pause2ButtonHeight); //Pause button

//triangle(nextSongX13t, nextSongY1t, nextSongX2t, nextSongY2t, nextSongX13t, nextSongY3t); //next song button
//rect(nextSongX, nextSongY, nextSongWid, nextSongHi); //next song button

//triangle(lastSongX13t, lastSongY1t, lastSongX2t, lastSongY2t, lastSongX13t, lastSongY3t); //last song button
//rect(lastSongX, lastSongY, lastSongWid, lastSongHi); //last song button

//below is the shuffle button draw fuctions

//line(line1X, line1Y, line1Xp2B, line1Yp2B); 
//line(line1Xp2B, line1Yp2B, line2Xp2B, line2Yp2B);
//line(line2Xp2B, line2Yp2B, line3Xp2, line3Yp2);
//line(line4X, line4Y, line4Xp2B, line4Yp2B);
//line(line4Xp2B, line4Yp2B, line5Xp2B, line5Yp2B);
//line(line5Xp2B, line5Yp2B, line6Xp2, line6Yp2);
//triangle(shuffleX1245t, shuffleY1t, shuffleX1245t, shuffleY2t, shuffleX36t, shuffleY3t);
//triangle(shuffleX1245t, shuffleY4t, shuffleX1245t, shuffleY5t, shuffleX36t, shuffleY6t);
