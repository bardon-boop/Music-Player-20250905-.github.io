// Music Test Player, Not full program
//
// Minim Initiation
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
// VARS Initiation
int screenWidth, screenHeight;
float soundConX1, soundConX2, soundConX3, soundConX4, soundConX5;
float soundConY1, soundConY2, soundConY3, soundConY4, soundConY5;
float soundConW1, soundConW2, soundConW3, soundConW4, soundConW5;
float soundConH1, soundConH2, soundConH3, soundConH4, soundConH5;
float playButtonX13, playButtonX2, playButtonY1, playButtonY2, playButtonY3;
float pause1ButtonX, pause1ButtonY, pause1ButtonWidth, pause1ButtonHeight;
float pause2ButtonX, pause2ButtonY, pause2ButtonWidth, pause2ButtonHeight;
float nextSongX13t, nextSongX2t, nextSongY1t, nextSongY2t, nextSongY3t;
float nextSongX, nextSongY, nextSongWid, nextSongHi;
float lastSongX13t, lastSongY1t, lastSongX2t, lastSongY2t, lastSongY3t;
float lastSongX, lastSongY, lastSongWid, lastSongHi;
float line1X, line1Y, line1Xp2B, line1Yp2B, line2Xp2B, line2Yp2B, line3Xp2, line3Yp2, line4X, line4Y, line4Xp2B, line4Yp2B, line5Xp2B, line5Yp2B, line6Xp2, line6Yp2;
float shuffleX1245t, shuffleY1t, shuffleY2t, shuffleX36t, shuffleY3t, shuffleY4t, shuffleY5t, shuffleY6t;
//
// Colour Initiation

void setup() {
  fullScreen();
  divisionDeclaration();
  printButtons();
}
