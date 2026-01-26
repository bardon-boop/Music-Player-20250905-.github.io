void loadMusic() {
  minim = new Minim(this);
  String fileBack = "../";
  String musicFolder = "Music/";
  songDetermined = 0;
  lastWaitPeriod = 3000;
  String[] songFile = new String[musicSongs];
  songFile[0] = "Satin Sugar - Huma-Huma";
  songFile[1] = "Eureka";
  songFile[2] = "On The Flip - The Grey Room _ Density & Time";
  String[] SFXFile = new String[SFX];
  SFXFile[0] = "Cartoon Metal Thunk";
  SFXFile[1] = "Straw Squeak";
  String FileExt = ".mp3";
  String sPathway;
  String ePathway;
  for (int i = 0; i <= 2; i++) {
    sPathway = fileBack + musicFolder + songFile[i] + FileExt; //Concatenation
    //println(sPathway);
    songList[i] = referenceSong[i] = minim.loadFile(sPathway);
    if (songList[i] == null) {
      println("Null Check on songList failed");
      quitProgram();
    }
  }
  for (int i = 0; i <= 1; i++) {
    ePathway = fileBack + musicFolder + SFXFile[i] + FileExt;
    println(ePathway);
    SFXList[i] = minim.loadFile(ePathway);
    if (SFXList[i] == null) {
      println("Null Check on SFXList failed");
    }
    printArray(songList);
    populateMetaData();
  }
  //  printArray(songList);
  //  printArray(SFXList);
} // End loadMusic

void playMusic() {
  songList[songDetermined].play();
} //End playMusic

void pauseMusic() {
  songList[songDetermined].pause();
} // End pauseMusic

void nextSong() {
  songList[songDetermined].rewind();
  songList[songDetermined].pause();
  if (!(songDetermined == musicSongs - 1)) {
    songDetermined += 1;
  } else {
    songDetermined = 0;
  }
  songList[songDetermined].play();
} // End nextSong

void lastSong() {
  if (songList[songDetermined].position() < lastWaitPeriod) {
    songList[songDetermined].rewind();
    songList[songDetermined].pause();
    if (!(songDetermined == 0)) {
      songDetermined -= 1;
    } else {
      songDetermined = 2;
    }
    songList[songDetermined].play();
  } else {
    songList[songDetermined].rewind();
  }
} // End lastSong

void shufflePlaylist() {
  AudioPlayer optionsList[] = new AudioPlayer[musicSongs];
  for (int x = 0; x < musicSongs; x++) {
    optionsList[x] = songList[x];
  }
  songList[songDetermined].rewind();
  songList[songDetermined].pause();
  int random;
  songList[songDetermined].rewind();
  songList[songDetermined].pause();
  //
  random = int(random(1, 3));
  songList[0] = optionsList[random];
  random = (songList[0] == optionsList[1]) ? (int(random(3) == 0 ? 0 : 2)): int(random(0, 2));
  songList[1] = optionsList[random];
  random = (songList[0] == optionsList[1] && songList[1] == optionsList[0]) ? 2 : 0;
  songList[2] = optionsList[random];
  //
  populateMetaData();
 //
  songList[songDetermined].play();
} // End shufflePlaylist
