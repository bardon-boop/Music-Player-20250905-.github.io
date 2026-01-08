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
  String[] SFXFile = new String[NofSFX];
  SFXFile[0] = "Cartoon Metal Thunk";
  SFXFile[1] = "Straw Squeak";
  String FileExt = ".mp3";
  String sPathway;
  String ePathway;
  for (int i = 0; i <= 2; i++) {
    sPathway = fileBack + musicFolder + songFile[i] + FileExt; //Concatenation
    //println(sPathway);
    songList[i] = minim.loadFile(sPathway);
    if (songList[i] == null) {
      println("Null Check on songList failed");
    }
  }
  for (int i = 0; i <= 1; i++) {
    ePathway = fileBack + musicFolder + SFXFile[i] + FileExt;
    println(ePathway);
    SFXList[i] = minim.loadFile(ePathway);
    if (SFXList[i] == null) {
      println("Null Check on SFXList failed");
    }
  }
  println("Song Data:");
  printArray(songList);
  println("SFX Data:");
  printArray(SFXList);
} //End Setup
//
void draw() {
  songList[songPlaying].play();
  //SFXList[0].play();
} // End Draw
//
void mousePressed() {
} // End mousePressed
//
void keyPressed() {
} // End keyPressed
//
// End Program
