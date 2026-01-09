// Buttons
//
int screenWidth;
int screenHeight;
float rectX, rectY, rectW, rectH;
float playButtonX13, playButtonX2, playButtonY1, playButtonY2, playButtonY3;
void setup() {
  size(1000, 700);
  screenWidth = width;
  screenHeight = height;
  rectX = screenWidth * 1/2 - screenWidth * 1/20;
  rectY = screenHeight * 1/2 - screenHeight * 1/20;
  rectH = screenHeight * 1/10;
  rectW = screenWidth * 1/10;
  playButtonX13 = rectX + rectW * 1/4;
  playButtonX2 = rectX + rectW * 3/4;
  playButtonY1 = rectY + rectH * 1/4;
  playButtonY2 = rectY + rectH * 1/2;
  playButtonY3 = rectY + rectH * 3/4;
  rect(rectX, rectY, rectW, rectH);
  triangle(playButtonX13, playButtonY1, playButtonX2, playButtonY2, playButtonX13, playButtonY3);
}
//
void draw() {
  background(200);
  rect(rectX, rectY, rectW, rectH);
  triangle(playButtonX13, playButtonY1, playButtonX2, playButtonY2, playButtonX13, playButtonY3);
  println(mouseX, mouseY);
  if (rectX < mouseX && mouseX < rectX + rectW && rectY < mouseY && mouseY < rectY + rectH) {
    if ( rectW < screenWidth * 1/10 * 1.1 ) {
      rectW *= 1.1;
      rectH *= 1.1;
    }
  }
  if (!(rectX < mouseX && mouseX < rectX + rectW) || !(rectY < mouseY && mouseY < rectY + rectH))
  if ( rectW == screenWidth * 1/10 * 1.1 ) {
    rectW /= 1.1;
    rectH /= 1.1;
  }
}
//
void mousePressed() {
}
//
void keyPressed() {
}
//
