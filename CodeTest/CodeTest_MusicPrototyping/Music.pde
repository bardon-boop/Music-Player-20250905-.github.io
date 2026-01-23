void loadMusic() {
  minim = new Minim(this);
  String fileBack = "../../";
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
    songList[i] = minim.loadFile(sPathway);
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
    populateMetaData();
  }
  //  printArray(songList);
  //  printArray(SFXList);
}

void playMusic() {
  songList[songDetermined].play();
}

void pauseMusic() {
  songList[songDetermined].pause();
}

void nextSong() {
  songList[songDetermined].rewind();
  songList[songDetermined].pause();
  if (!(songDetermined == musicSongs - 1)) {
    songDetermined += 1;
  } else {
    songDetermined = 0;
  }
  songList[songDetermined].play();
}

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
}

void shufflePlaylist() {
  AudioPlayer optionsList[] = new AudioPlayer[musicSongs];
  optionsList[0] = songList[0];
  optionsList[1] = songList[1];
  optionsList[2] = songList[2];
  int random;
  for (int i = 0; i < 3; i++) {
    songList[songDetermined].rewind();
    songList[songDetermined].pause();
    random = int(random(0, 3));
    if (i == 0) {
      songList[i] = optionsList[random];
    }
    if (i == 1) {
      while (optionsList[random] == songList[i + 1] || optionsList[random] == songList[i - 1]) {
        random = int(random(0, 3));
      }
    } else {
      if (i == 2) {
        while (optionsList[random] == songList[i - 1] || optionsList[random] == songList[i - 2]) {
          random = int(random(0, 3));
        }
      }
      songList[i] = optionsList[random];
    }
    songList[songDetermined].play();
  }
}
