/* Library Notes
  - File / Sketch / Import Library / Manage Libraries
  - We use Minim for Sound and Sound Effects
  - Able to Google-search libraries to make your project easier
  - Documentation: https://code.compartmental.net/minim/
  - Specific Class: https://code.compartmental.net/minim/audioplayer_class_audioplayer.html
  - Specific Class: https://code.compartmental.net/minim/audiometadata_class_audiometadata.html
  
  ** You are now able to research any Processing-Java Library ... or Any Java Library from the internet **
  - Processing-Java Libraries must be installed into the IDE
  - Java Libraries simply require the 'import' declaration
*/
//Library - Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
// Global Variables
Minim minim; //Initiates entire class
int NofSongs = 3; // # of songs, best practice
int NofSFX = 2; // # of sound efffects, best practice
AudioPlayer[] songList = new AudioPlayer[NofSongs];
AudioPlayer[] SFXList = new AudioPlayer[NofSFX];
int songPlaying = NofSongs - NofSongs; //Zero, Math Property
//
//Display
size(500, 750); //Portrait
int screenWidth = width; //Width
int screenHeight = height; //Height
//
//Music Loading - Structured Review
minim = new Minim(this);
String fileBack = "../../";
String musicFolder = "Music/";
String[] songFile = new String[NofSongs];
songFile[0] = "Down The Rabbit Hole - The Grey Room _ Density & Time (1)";
songFile[1] = "In The Morning - The Grey Room _ Clark Sims";
songFile[2] = "On The Flip - The Grey Room _ Density & Time";
String[] sFileExt = new String[NofSongs + NofSFX];
sFileExt[0] = ".mp3";
sFileExt[1] = ".mp3";
sFileExt[2] = ".mp3";
String sPathway = fileBack + musicFolder + songFile[songPlaying] + sFileExt[songPlaying]; //Concatenation
songList[songPlaying] = minim.loadFile(sPathway);
//
println("Null Check on songList");
println(sPathway);
printArray(songList);
