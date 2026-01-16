void playButtonHovered() {
    if (nightToggle == false) {
      fill(playButtonBoxH);
    } else {
      fill(playButtonBoxHN);
    }
    rect(rectX, rectY, rectW, rectH);
    if (nightToggle == false) {
      fill(playButtonTriH);
    } else {
      fill(playButtonTriHN);
    }
    triangle(playButtonX13, playButtonY1, playButtonX2, playButtonY2, playButtonX13, playButtonY3);
}
void playButtonNH() {
    if (nightToggle ==false) {
      fill(playButtonBox);
    } else {
      fill(playButtonBoxN);
    }
    rect(rectX, rectY, rectW, rectH);
    if (nightToggle == false) {
      fill(playButtonTri);
    } else {
      fill (playButtonTriN);
    }
    triangle(playButtonX13, playButtonY1, playButtonX2, playButtonY2, playButtonX13, playButtonY3);
}
