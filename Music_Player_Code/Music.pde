void loadMusic() {
  minim = new Minim(this);
  String fileBack = "../";
  String musicFolder = "Music/";
  songDetermined = 0;
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
    // printArray(songList);
    // populateMetaData();
  }
  //  printArray(songList);
  //  printArray(SFXList);
} // End loadMusic

void playMusic() {
  playStopTog = true;
  songList[songDetermined].play();
} //End playMusic

void stopMusic() {
  playStopTog = false;
  songList[songDetermined].rewind();
  songList[songDetermined].pause();
} // End stopMusic

void pauseMusic() {
  playStopTog = false;
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
  playStopTog = true;
  songList[songDetermined].play();
} // End nextSong

void lastSong() {
  //
  // Note: restarts song instead unless you are 3 seconds or less into a song, similar to a lot of new music players
  if (songList[songDetermined].position() < songList[songDetermined].length() * 1/8) {
    songList[songDetermined].rewind();
    songList[songDetermined].pause();
    if (!(songDetermined == 0)) {
      songDetermined -= 1;
    } else {
      songDetermined = 2;
    }
    playStopTog = true;
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
  playStopTog = true;
  songList[songDetermined].play();
} // End shufflePlaylist

void loopMusic1() {
  songList[songDetermined].loop(1);
} // End loopMusicO

void loopMusicI() {
  songList[songDetermined].loop();
} // End loopMusicI

void skipMusicF() {
  songList[songDetermined].loop(5000);
} // End loopMusicI

void skipMusicB() {
  songList[songDetermined].loop(-5000);
} // End skipMusicB

void muteMusic() {
  //MUTE Behaviour: stops electricty to speakers, does not stop file
  //NOTE: MUTE has NO built-in PUASE button, NO built-in rewind button
  //ERROR: if song near end of file, user will not know song is at the end
  //Known ERROR: once song plays, MUTE acts like it doesn't work
  if ( songList[songDetermined].isMuted() ) {
    //ERROR: song might not be playing
    //CATCH: ask .isPlaying() or !.isPlaying()
    songList[songDetermined].unmute();
  } else {
    //Possible ERROR: Might rewind the song
    songList[songDetermined].mute();
  }
} // End muteMusic
