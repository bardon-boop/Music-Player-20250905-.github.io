int age = 0;
int lastBInput;
int backspaceInterval = 200;
String name = "Braedon";
boolean input = false;
String name2 = "";

void setup() {
  textSize(32);
  size(800, 400);
}

void draw() {
  background(200);
  textSize(32);
  text("Hello World! I am " + name + "!", 250, 50);
  text("What is your name?", 250, 80);
  if (input == true) {
    text("hello " + name2, 250, 110);
  } else {
    text(name2, 250, 110);
  }
}

void keyPressed() {
  if (input == false) {
    if (key == ENTER) {
      input = true;
    } else if (key == BACKSPACE && name2.length() > 0) {
      int currentTime = millis();
      if (currentTime - lastBInput > backspaceInterval) {
        name2 = name2.substring(0, name2.length() - 1);
        lastBInput = currentTime;
      }
    } else {
      if(input == false)
      name2 += key;
    }
  } else {
    if (key == ENTER) {
      input = false;
    name2 = "";
    }
  }
}
