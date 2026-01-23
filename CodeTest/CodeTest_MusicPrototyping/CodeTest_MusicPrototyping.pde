// Music Test Player, Not full program
//
// Minim Initiation
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
Minim minim;
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
color BG, clear;
color playButtonBox, playButtonTri, playButtonBoxH, playButtonTriH;
color playButtonBoxN, playButtonTriN, playButtonBoxHN, playButtonTriHN;
color pauseButtonBox, pauseButtonRec, pauseButtonBoxH, pauseButtonRecH;
color pauseButtonBoxN, pauseButtonRecN, pauseButtonBoxHN, pauseButtonRecHN;
color nextButtonBox, nextButtonTri, nextButtonRec, nextButtonBoxH, nextButtonTriH, nextButtonRecH;
color nextButtonBoxN, nextButtonTriN, nextButtonRecN, nextButtonBoxHN, nextButtonTriHN, nextButtonRecHN;
color lastButtonBox, lastButtonTri, lastButtonRec, lastButtonBoxH, lastButtonTriH, lastButtonRecH;
color lastButtonBoxN, lastButtonTriN, lastButtonRecN, lastButtonBoxHN, lastButtonTriHN, lastButtonRecHN;
color shuffleBox, shuffleTri, shuffleBoxH, shuffleTriH;
color shuffleBoxN, shuffleTriN, shuffleBoxHN, shuffleTriHN;
color playB, playT, playBH, playTH, pauseB, pauseR, pauseBH, pauseRH, nextB, nextT, nextR, nextBH, nextTH, nextRH;
color shuffleB, shuffleT, shuffleBH, shuffleTH, lastB, lastT, lastR, lastBH, lastTH, lastRH;
color textSong, textArtist;
boolean mouseHoveredPB, mouseHoveredPaB, mouseHoveredNB, mouseHoveredLB, mouseHoveredSB;
boolean nightToggle;
// Music Initiation
int musicSongs = 3;
int SFX = 2;
int songDetermined;
AudioPlayer[] songList = new AudioPlayer[musicSongs];
AudioPlayer[] SFXList = new AudioPlayer[SFX];
int lastWaitPeriod;
// Text Initiation
int stringsPresent = 2;
float[] stringLocX = new float[stringsPresent];
float[] stringLocY = new float[stringsPresent];
float[] stringLocW = new float[stringsPresent];
float[] stringLocH = new float[stringsPresent];
String fontChosen;
float trebuchetAR;
float[] fontSize = new float[stringsPresent];
String[] textStrings = new String[stringsPresent];
AudioMetaData[] songData = new AudioMetaData[musicSongs];
//
void setup() {
  fullScreen();
  divisionDeclaration();
  colourPop();
  background(BG);
  printButtons();
  loadMusic();
  textStartUp();
}

void draw() {
  buttonColours();
  printText();
}

void mousePressed() {
  if (mouseHoveredPB == true) {
    playMusic();
  }
  if (mouseHoveredPaB == true) {
    pauseMusic();
  }
  if (mouseHoveredNB == true) {
    nextSong();
  }
  if (mouseHoveredLB == true) {
    lastSong();
  }
  if (mouseHoveredSB == true) {
    shufflePlaylist();
  }
}

void keyPressed() {
  if (key == 'z') {
    toggleNightM();
    colourPop();
  }
  if (key == 'x') {
    quitProgram();
  }
}

void quitProgram() {
  noLoop();
  exit();
}
