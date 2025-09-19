/* Final project: Music player
 -Author, Braedon G.
 -Date: 20260130
 */
//
boolean mousetouchlyrics = false;
boolean lyricsdropped = false;
boolean dropdown = false;
int volume = 0;

void setup() {
  size(1500, 2000);
}

void draw() {
  background(0);
  textSize(32);
  noStroke();
  fill(100, 0, 0);
  rect(939.5, 310, 50, 350, 70);
  fill(75, 0, 0);
  ellipse(962.5, 625, 125, 125);
  rect(75, 75, 750, 750);
  fill (140, 0, 0);
  if (volume >= 1) {
    rect(944.5, 520, 40, 40);
    if (volume >= 2) {
      rect(944.5, 475, 40, 40);
      if (volume >= 3) {
        rect(944.5, 430, 40, 40);
        if (volume >= 4) {
          rect(944.5, 385, 40, 40);
          if (volume >= 5) {
            rect(944.5, 340, 40, 40);
          }
        }
      }
    }
  }

  if (mouseX >= 900 && mouseX <= 1450 && mouseY >= 75 && mouseY <= 152) {
    mousetouchlyrics = true;
  } else {
    if (dropdown == false) {
      mousetouchlyrics = false;
    } else {
      if (mouseX >= 900 && mouseX <= 1450 && mouseY >= 75 && mouseY <= 825) {
        mousetouchlyrics = true;
      } else {
        mousetouchlyrics = false;
      }
    }
  }
  if (mousetouchlyrics == false) {
    fill(100, 0, 0);
  } else {
    fill(210, 0, 0);
    triangle(1175, 190, 1100, 160, 1250, 160);
  }
  if (dropdown == false) {
    rect(900, 75, 550, 77, 20);
  } else {
    rect(900, 75, 550, 750, 20);
  }
}

void mousePressed() {
  if (dropdown == false) {
    if (mouseX >= 900 && mouseX <= 1450 && mouseY >= 75 && mouseY <= 152) {
      dropdown = true;
    }
  } else {
    if (mouseX >= 900 && mouseX <= 1450 && mouseY >= 75 && mouseY <= 825) {
      dropdown = false;
    }
  }
}

void keyPressed() {
  if (keyCode == UP) {
    if (volume <= 4)
      volume = volume + 1;
  } else if (keyCode == DOWN) {
    if (volume >= 1)
      volume = volume - 1;
  }
}
