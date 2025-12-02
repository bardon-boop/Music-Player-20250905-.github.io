
int screenHeight;
int screenWidth;
float paddle1Y;
float paddle2Y;
float paddle1X;
float paddle2X;
float paddleW;
float paddleH;

void setup() {
 fullScreen();
 screenHeight = displayHeight;
 screenWidth = displayWidth;
 paddle1Y = screenHeight * 1/2;
 paddle2Y = screenHeight * 1/2;
 paddle1X = screenWidth * 1/50;
 paddle2X = screenWidth * 49/50;
 paddleW = screenWidth * 1/80;
 paddleH = screenHeight * 1/5;
}


void draw() {
  background(0);
  fill(255);
  rect(paddle1X, paddle1Y, paddleW, paddleH);
  rect(paddle2X, paddle2Y, paddleW, paddleH);
}

void keyPressed() {
  if (key == 'w') {
    if (paddle1Y > 0){
    paddle1Y -= screenHeight * 1/50;
    }
  }
  if (key == 's') {
    if (paddle1Y + paddleH < screenHeight) {
    paddle1Y += screenHeight * 1/50;
    }
  }
    if (keyCode == UP) {
    if (paddle2Y > 0){
    paddle2Y -= screenHeight * 1/50;
    }
  }
  if (keyCode == DOWN) {
    if (paddle2Y + paddleH < screenHeight) {
    paddle2Y += screenHeight * 1/50;
    }
  }
}
