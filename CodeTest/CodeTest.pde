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
  if (mouseX >= 400 && mouseX <= 500 && mouseY >= 200 && mouseY <= 275) {
    fill(0, 100, 0);
  } else {
    fill(0, 255, 0);
  }
  rect(400, 200, 100, 75);
  fill(0, 0, 0);
  textSize(32);
  text("Hello World! I am " + name + "!", 10, 50);
  text("What is your name?", 10, 80);
  //if (input == true) {
    text("hello " + name2 + "!", 10, 110);
  } else {
    text(name2, 10, 110);
  }
}
if (name2.length() > 0) {
  input = true;
} else if (key == BACKSPACE && name2.length() > 0) {
  int currentTime = millis();
  if (currentTime - lastBInput > backspaceInterval) {
    name2 = name2.substring(0, name2.length() - 1);
    lastBInput = currentTime;
  } else {
  if (input == false) {
    name2 += key;
  } else {
    if (key == ENTER) {
      input = false;
      name2 = "";
    }
  }
}


// text above is a personal project ig
