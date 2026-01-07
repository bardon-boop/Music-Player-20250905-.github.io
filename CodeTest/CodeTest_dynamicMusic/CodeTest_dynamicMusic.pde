//Library - Minim
//Reminder: activate the library
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
Minim minim; //Initiates entire class
int NofSongs = 3; // # of songs, best practice
int NofSFX = 2; // # of sound efffects, best practice
AudioPlayer[] songList = new AudioPlayer[NofSongs];
AudioPlayer[] SFXList = new AudioPlayer[NofSFX];
int songPlaying = 0; //Zero, Math Property
//
void setup() {
  size(500, 750); //Portrait
  int screenWidth = width; //Width
  int screenHeight = height; //Height
  //
  minim = new Minim(this);
  String fileBack = "../../";
  String musicFolder = "Music/";
  String[] songFile = new String[NofSongs];
  songFile[0] = "Down The Rabbit Hole - The Grey Room _ Density & Time (1)";
  songFile[1] = "In The Morning - The Grey Room _ Clark Sims";
  songFile[2] = "On The Flip - The Grey Room _ Density & Time";
  String[] sFileExt = new String[NofSongs];
  sFileExt[0] = ".mp3";
  sFileExt[1] = ".mp3";
  sFileExt[2] = ".mp3";
  String sPathway;
  for (int i = 0; i <= 2; i++) {
    sPathway = fileBack + musicFolder + songFile[i] + sFileExt[i]; //Concatenation
    println(sPathway);
    songList[i] = minim.loadFile(sPathway);
    if (songList[i] == null) {
      println("Null Check on songList failed");
    }
  }
  printArray(songList);
} //End Setup
//
void draw() {
  songList[1].play();
} // End Draw
//
void mousePressed() {
} // End mousePressed
//
void keyPressed() {
} // End keyPressed
//
// End Program
