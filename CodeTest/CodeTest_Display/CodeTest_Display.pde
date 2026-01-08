void settings() {
  println(displayWidth, displayHeight);
  int smallerDimension = (displayWidth > displayHeight) ? displayHeight : displayWidth;
  smallerDimension *= 0.9;
 size(smallerDimension, smallerDimension);  
}



void setup() {}

void draw() {}

void mousePressed() {}

void keyPressed() {}
