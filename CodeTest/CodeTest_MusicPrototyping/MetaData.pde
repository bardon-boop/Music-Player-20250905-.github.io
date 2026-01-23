// Determining Data Regarding Audio Files
//
//
//
void populateMetaData() {
  for (int i = 0; i < musicSongs; i++) {
    println(songList[i].getMetaData());
    songData[i] = songList[i].getMetaData();
    println("registered data", songData[i].title());
    if (songData[i] == null) {
      quitProgram();
    }
  }
}
