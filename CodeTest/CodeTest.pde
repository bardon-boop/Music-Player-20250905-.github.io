int age = 0;
String name = "Braedon";
boolean input = false; 

void setup() {
textSize(32);
size(800,400);
text("Hello World! I am " + name + "!", 250, 50);
text("What is your name?", 250, 70);
}

void keyPressed() {
  if(input = false) {
    if (key == ENTER) {
      input = true;
    } else {
      name += key;
    }
  }
}


    
