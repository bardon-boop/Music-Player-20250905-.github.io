void printButtons() {
  printPB();
  printPaB();
}

void printPB() {
  rect(soundConX1, soundConY1, soundConW1, soundConH1);
  triangle(playButtonX13, playButtonY1, playButtonX2, playButtonY2, playButtonX13, playButtonY3);
}

void printPaB() {
  rect(soundConX2, soundConY2, soundConW2, soundConH2);
  rect(pause1ButtonX, pause1ButtonY, pause1ButtonWidth, pause1ButtonHeight);
  rect(pause2ButtonX, pause2ButtonY, pause2ButtonWidth, pause2ButtonHeight);
}
