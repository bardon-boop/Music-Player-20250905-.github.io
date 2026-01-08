//Time Stamping
//
int timer;
void setup() {
  timer = millis(); // Measures program initiation time
  println("Start of Setup:", timer);
  timer = millis();
  println("End of Setup:", timer);
}

void draw() {
  timer = millis();
  println("Draw Start", timer);
  noLoop();
}
